// 
//    --------     --------      -------
//   | Input  |    | 
//   |        |--->
//   | Driver |     
//    --------      --------      -------
// imgui headers
#include <SDL.h>
#include <SDL_opengl.h>
#include <assert.h>
#include <stdio.h>

#include <opencv2/core.hpp>
#include <opencv2/imgcodecs.hpp>

#ifndef ASSETS_DIR
#error ASSETS_DIR undefined
#endif

#include "imgui.h"
#include "imgui_impl_opengl3.h"
#include "imgui_impl_sdl.h"

// verilator headers
#include "Vcolor_proc.h"
// Acording to https://verilator.org/guide/latest/files.html#files-read-written
// Vdesign_top___024root.h is a Top-level internal header file
// (from SystemVerilog $root), but we are not using SystemVerilog, so no need
// to have it included.
//#include "Vdesign_top___024root.h"
#include "verilated.h"
#include "verilated_vcd_c.h"

#define LED_ICON "\uf111"
#define START_ICON "\uf04b"
#define STOP_ICON "\uf04d"
#define STEP_ICON "\uf051"
#define RESET_ICON "\uf0e2"

typedef cv::Vec<uint8_t, 3> BGRPixel;
typedef cv::Vec<uint8_t, 4> BGRAPixel;

const int n_leds = 8;
const int IMG_COLS = 80;
const int IMG_ROWS = 60;
const int IMG_PXLS = IMG_COLS * IMG_ROWS;
const uint8_t ALPHA_SOLID = 255;

const char input_image_1_path[] = ASSETS_DIR "/red_ball_left_80x60.png";
const char input_image_2_path[] = ASSETS_DIR "/red_ball_center_80x60.png";
const char input_image_3_path[] = ASSETS_DIR "/red_ball_right_80x60.png";

const char font_awesome_path[] = ASSETS_DIR "/fa-solid-900.ttf";

class SimElement {
 public:
  virtual ~SimElement() {}
  virtual void onReset() {}
  virtual void postReset() {}
  virtual void preCycle() {}
  virtual void postCycle() {}
};

class InputDriver : public SimElement
{
 public:
  InputDriver(Vcolor_proc *uut)
      : uut{uut},
        input_addr{0} {}

  virtual ~InputDriver() {}

  virtual void onReset() {
    this->input_addr = 0;
    this->uut->orig_addr = 0;
    this->uut->orig_pxl = 0;
    }

  virtual void preCycle() {
    this->uut->orig_addr = this->input_addr;
    // The image is 12-bit RGB444, we have 4096 (16x16x16) colors
    // The image has 4800 pixels (80x60). Lets make the image change
    // color every pixel
    this->uut->orig_pxl = (this->input_addr) % IMG_PXLS;
  }

  virtual void postCycle() {

    this->input_addr++;
    if (this->input_addr >= IMG_PXLS) {
      this->input_addr = 0;
      this->col_num = 0;
      this->row_num = 0;
    } else if (this->col_num >= IMG_COLS) {
      this->col_num = 0;
      this->row_num++;
    }
  }

 private:
  Vcolor_proc *const uut;
  const uint8_t *wRgbfilter;
  const cv::Mat **input_image;
  size_t input_addr;
  int col_num = 0;
  int row_num = 0;
  
};

class OutputMonitor : public SimElement {
 public:
  OutputMonitor(Vcolor_proc *uut, cv::Mat &output_image)
      : uut{uut}, output_image{output_image} {}

  virtual ~OutputMonitor() {}

  virtual void onReset() {}

  virtual void preCycle() { }

  virtual void postCycle() {
    if (this->uut->proc_we == 1) { //if write enable
      // We are going to save the pixels into an image:
      auto img_data = this->output_image.ptr<BGRAPixel>();
      // take the direction of the pixel that is being received:
      auto px = &(img_data[this->uut->proc_addr]);
  
      (*px)[0] = (this->uut->proc_pxl & 0xF) << 4; //blue. 4 LSB
      (*px)[1] = ((this->uut->proc_pxl >> 4) & 0xF) << 4; //green: bits 7..4
      (*px)[2] = ((this->uut->proc_pxl >> 8) & 0xF) << 4; //red: bits 11..8
      (*px)[3] = ALPHA_SOLID; //alpha
    }
  }

 private:
  Vcolor_proc *const uut;
  cv::Mat output_image;
};

Vcolor_proc *initUUT(int argc, char **argv) {
  Verilated::randReset(2);  // Randomize all bits
  Verilated::traceEverOn(true); // to generate waveforms
  Verilated::commandArgs(argc, argv);
  Vcolor_proc *uut = new Vcolor_proc; // instantiates the uut verilog module

  return uut;
}

void deinitUUT(Vcolor_proc **uut, VerilatedVcdC *m_trace) {
  if (m_trace != 0) {
    m_trace->flush();
    m_trace->close();
    delete m_trace;
  }
  (*uut)->final();
  delete *uut;
  *uut = 0;
}

VerilatedVcdC *initTrace(Vcolor_proc *uut) {
  VerilatedVcdC *m_trace = new VerilatedVcdC; // create trace object
  // pass trace object to the uut verilog. 99 is the depth of the trace
  uut->trace(m_trace, 99);
  m_trace->open("sim.vcd");
  return m_trace;
}

void dumpTrace(VerilatedVcdC *m_trace, vluint64_t *sim_time,
               bool flush = false) {
  if (m_trace != 0) {
    m_trace->dump(*sim_time);
    if (flush) m_trace->flush();
  }
  *sim_time += 1;
}

void tickUUT(Vcolor_proc *uut, const std::vector<SimElement *> &sim_elements,
             vluint64_t *sim_time, VerilatedVcdC *m_trace = 0) {
  uut->clk = 0;
  uut->eval();
  dumpTrace(m_trace, sim_time, true);
  for (SimElement *e : sim_elements) e->preCycle();

  uut->clk = 1;
  uut->eval();
  for (SimElement *e : sim_elements) e->postCycle();
  dumpTrace(m_trace, sim_time);

}

// Reset the unit
void resetUUT(Vcolor_proc *uut, const std::vector<SimElement *> &sim_elements,
              vluint64_t *sim_time, VerilatedVcdC *m_trace = 0,
              int reset_cycles = 10) {
  uut->rst = 1;
  for (int i = 0; i < reset_cycles; i++) {
    tickUUT(uut, sim_elements, sim_time, m_trace);
  }
  uut->rst = 0;

  for (SimElement *e : sim_elements) e->onReset();
}

// Change the color filter byt having a pulse of proc_ctrl
//               __    __
// clk        __|  |__|  |
//            _____
// proc_ctrl |     |______

void change_filter_UUT(Vcolor_proc *uut, const std::vector<SimElement *> &sim_elements,
              vluint64_t *sim_time, VerilatedVcdC *m_trace = 0,
              int reset_cycles = 10) {
  uut->clk = 0;
  uut->proc_ctrl = 1;
  uut->eval();
  dumpTrace(m_trace, sim_time, true);

  uut->clk = 1;
  uut->proc_ctrl = 1;
  uut->eval();
  dumpTrace(m_trace, sim_time, true);

  uut->clk = 0;
  uut->proc_ctrl = 0;
  uut->eval();
  dumpTrace(m_trace, sim_time, true);

  uut->clk = 1;
  uut->proc_ctrl = 0;
  uut->eval();
  dumpTrace(m_trace, sim_time, true);
}

GLuint create_texture(GLenum format, const cv::Mat &texture) {
  if (texture.data == NULL) return 0;

  // Create a OpenGL texture identifier
  GLuint image_texture;
  glGenTextures(1, &image_texture);
  glBindTexture(GL_TEXTURE_2D, image_texture);

  // Setup filtering parameters for display
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S,
                  GL_CLAMP_TO_EDGE);  // This is required on WebGL for non
                                      // power-of-two textures
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);  // Same

  // Upload pixels into texture
#if defined(GL_UNPACK_ROW_LENGTH) && !defined(__EMSCRIPTEN__)
  glPixelStorei(GL_UNPACK_ROW_LENGTH, 0);
#endif
  glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, texture.cols, texture.rows, 0,
               format, GL_UNSIGNED_BYTE, texture.data);

  return image_texture;
}

bool update_texture(GLuint texture_id, GLenum format, const cv::Mat &texture) {
  if (texture.data == NULL) return 0;

  glBindTexture(GL_TEXTURE_2D, texture_id);
  glTexSubImage2D(GL_TEXTURE_2D, 0, 0, 0, texture.cols, texture.rows, format,
                  GL_UNSIGNED_BYTE, texture.data);

  return true;
}

// Main code
int main(int argc, char **argv) {
  // init imgui
  //
  // Setup SDL
  // (Some versions of SDL before <2.0.10 appears to have performance/stalling
  // issues on a minority of Windows systems, depending on whether
  // SDL_INIT_GAMECONTROLLER is enabled or disabled.. updating to latest version
  // of SDL is recommended!)
  // To check the SDL API, go to: https://wiki.libsdl.org/SDL2/CategoryAPI
  if (SDL_Init(SDL_INIT_VIDEO | SDL_INIT_TIMER | SDL_INIT_GAMECONTROLLER) !=
      0) {
    printf("Error: %s\n", SDL_GetError());
    return -1;
  }

  // Decide GL+GLSL versions
#if defined(__APPLE__)
  // GL 3.2 Core + GLSL 150
  const char *glsl_version = "#version 150";
  SDL_GL_SetAttribute(
      SDL_GL_CONTEXT_FLAGS,
      SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG);  // Always required on Mac
  SDL_GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_CONTEXT_PROFILE_CORE);
  SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 3);
  SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 2);
#else
  // GL 3.0 + GLSL 130
  const char *glsl_version = "#version 130";
  SDL_GL_SetAttribute(SDL_GL_CONTEXT_FLAGS, 0);
  SDL_GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_CONTEXT_PROFILE_CORE);
  SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 3);
  SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 0);
#endif

  // Create window with graphics context

  // https://wiki.libsdl.org/SDL2/SDL_GL_SetAttribute
  // Set an OpenGL window attribute before window creation:
  // SDL_GL_DOUBLEBUFFER: whether the output is single or double buffered
  SDL_GL_SetAttribute(SDL_GL_DOUBLEBUFFER, 1);
  // SDL_GL_DEPTH_SIZE: the minimum number of bits in the depth buffer
  SDL_GL_SetAttribute(SDL_GL_DEPTH_SIZE, 24);
  SDL_GL_SetAttribute(SDL_GL_STENCIL_SIZE, 8);
  SDL_WindowFlags window_flags =
      (SDL_WindowFlags)(SDL_WINDOW_OPENGL | SDL_WINDOW_RESIZABLE |
                        SDL_WINDOW_ALLOW_HIGHDPI);
  SDL_Window *window =
      SDL_CreateWindow("Pixel Processor simulator", SDL_WINDOWPOS_CENTERED,
                       SDL_WINDOWPOS_CENTERED, 1280, 720, window_flags);
  SDL_GLContext gl_context = SDL_GL_CreateContext(window);
  SDL_GL_MakeCurrent(window, gl_context);
  SDL_GL_SetSwapInterval(1);  // Enable vsync

  // Setup Dear ImGui context
  IMGUI_CHECKVERSION();
  ImGui::CreateContext();
  ImGuiIO &io = ImGui::GetIO();
  // Load a first font
  ImFont *font = io.Fonts->AddFontDefault();

  static const ImWchar icons_ranges[] = {0xe005, 0xf8ff, 0};  // Will not be copied by AddFont* so keep in scope.
  ImFontConfig icons_config;
  icons_config.MergeMode = true;
  icons_config.PixelSnapH = true;
  io.Fonts->AddFontFromFileTTF(font_awesome_path, 14.0f, &icons_config, icons_ranges);  // Merge into first font
  io.Fonts->Build();

  // Setup Dear ImGui style
  ImGui::StyleColorsDark();
  // ImGui::StyleColorsClassic();

  // Setup Platform/Renderer backends
  ImGui_ImplSDL2_InitForOpenGL(window, gl_context);
  ImGui_ImplOpenGL3_Init(glsl_version);

  // init buffers
  const cv::Mat input_image_1 = cv::imread(cv::String{input_image_1_path});
  assert(input_image_1.channels() == 3 && input_image_1.cols == IMG_COLS &&
         input_image_1.rows == IMG_ROWS && input_image_1.isContinuous());
  const cv::Mat input_image_2 = cv::imread(cv::String{input_image_2_path});
  assert(input_image_2.channels() == 3 && input_image_2.cols == IMG_COLS &&
         input_image_2.rows == IMG_ROWS && input_image_2.isContinuous());
  const cv::Mat input_image_3 = cv::imread(cv::String{input_image_3_path});
  assert(input_image_3.channels() == 3 && input_image_3.cols == IMG_COLS &&
         input_image_3.rows == IMG_ROWS && input_image_3.isContinuous());

  // output image is cols x row, with 4 channels (C4) of 8-bit unsigned
  cv::Mat output_image(IMG_ROWS, IMG_COLS, CV_8UC4);

  uint8_t wRgbfilter = 0x00;  // no filter

  // create & load input/output textures
  GLuint input_texture_1_id = create_texture(GL_BGR, input_image_1);
  GLuint input_texture_2_id = create_texture(GL_BGR, input_image_2);
  GLuint input_texture_3_id = create_texture(GL_BGR, input_image_3);

  GLuint output_texture_id = create_texture(GL_BGRA, output_image);

  // init dut, tracing and sim elements
  Vcolor_proc *uut = initUUT(argc, argv);
  VerilatedVcdC *m_trace = initTrace(uut);

  const uint8_t *input_buffer = input_image_1.data;
  const cv::Mat *input_image = &input_image_1;
  // create an array of simulation elements, which are the input driver
  // and the monitor of the outputs
  std::vector<SimElement *> simElements;
  // add these simulation elements to the array:
  simElements.push_back(new InputDriver(uut));
  simElements.push_back(new OutputMonitor(uut, output_image));

  vluint64_t sim_time = 0;
  resetUUT(uut, simElements, &sim_time, m_trace); // reset unit under test

  // Our state
  bool done = false;
  bool show_demo_window = false;
  bool running = false;
  bool do_reset = false;
  bool change_filter = false;
  int step_n_cycles = 0;
  int frames_per_iteration = 1;
  int cycles_per_iteration = frames_per_iteration * IMG_PXLS;

  // Main loop
  while (!done) {
    // Poll and handle events (inputs, window resize, etc.)
    // You can read the io.WantCaptureMouse, io.WantCaptureKeyboard flags to
    // tell if dear imgui wants to use your inputs.
    // - When io.WantCaptureMouse is true, do not dispatch mouse input data to
    // your main application.
    // - When io.WantCaptureKeyboard is true, do not dispatch keyboard input
    // data to your main application. Generally you may always pass all inputs
    // to dear imgui, and hide them from your application based on those two
    // flags.
    SDL_Event event;
    while (SDL_PollEvent(&event)) {
      ImGui_ImplSDL2_ProcessEvent(&event);
      if (event.type == SDL_QUIT) done = true;
      if (event.type == SDL_WINDOWEVENT &&
          event.window.event == SDL_WINDOWEVENT_CLOSE &&
          event.window.windowID == SDL_GetWindowID(window))
        done = true;
    }

    // Start the Dear ImGui frame
    ImGui_ImplOpenGL3_NewFrame();
    ImGui_ImplSDL2_NewFrame();
    ImGui::NewFrame();

    // 1. Show the big demo window (Most of the sample code is in
    // ImGui::ShowDemoWindow()! You can browse its code to learn more about Dear
    // ImGui!).
    if (show_demo_window) ImGui::ShowDemoWindow(&show_demo_window);

    // main window
    {
      ImGui::Begin("Main");
      ImGui::Checkbox("Demo Window", &show_demo_window);

      ImGui::InputInt("Frames per iteration", &frames_per_iteration);
      running ^= ImGui::Button(running ? STOP_ICON " Stop" : START_ICON " Start");ImGui::SameLine();
      do_reset = ImGui::Button(RESET_ICON " Reset");

      change_filter = ImGui::Button(RESET_ICON " Filter");

      if (running || ImGui::Button(STEP_ICON " Step frame")) {
        step_n_cycles = frames_per_iteration * IMG_PXLS;
      }

      ImGui::Text("Input frame buffer %d x %d (tex id=%p)", input_image->cols,
                  input_image->rows, (void *)(intptr_t)input_texture_1_id);
      ImVec2 pos = ImGui::GetCursorScreenPos();
      if (ImGui::ImageButton((void *)(intptr_t)input_texture_1_id,
                             ImVec2(input_image->cols, input_image->rows))) {
        input_image = &input_image_1;
      }
      ImGui::SameLine();
      if (ImGui::ImageButton((void *)(intptr_t)input_texture_2_id,
                             ImVec2(input_image->cols, input_image->rows))) {
        input_image = &input_image_2;
      }
      ImGui::SameLine();
      if (ImGui::ImageButton((void *)(intptr_t)input_texture_3_id,
                             ImVec2(input_image->cols, input_image->rows))) {
        input_image = &input_image_3;
      }

      ImGui::Text("wRgbfilter=%x", wRgbfilter);
      static bool red_filter_check = false;
      static bool green_filter_check = false;
      static bool blue_filter_check = false;
      bool wRgbfilter_updated = false;
      wRgbfilter_updated |= ImGui::Checkbox("red", &red_filter_check);
      ImGui::SameLine();
      wRgbfilter_updated |= ImGui::Checkbox("green", &green_filter_check);
      ImGui::SameLine();
      wRgbfilter_updated |= ImGui::Checkbox("blue", &blue_filter_check);

      if (wRgbfilter_updated) {
        wRgbfilter = (((uint8_t)blue_filter_check) << 2) |
                     (((uint8_t)green_filter_check) << 1) |
                     (uint8_t)red_filter_check;
      }

      ImGui::Text("Output frame buffer %d x %d (tex id=%p)", output_image.cols,
                  output_image.rows, (void *)(intptr_t)output_texture_id);
      ImGui::Image((void *)(intptr_t)output_texture_id,
                   ImVec2(output_image.cols, output_image.rows));

      ImGui::Text("Top level state");
      ImGui::Text("[Leds]");
      ImGui::SameLine();
      /*
      for (int i = n_leds; i > 0; i--) {
        int led_n = i - 1;
        bool led_on = uut->leds & (1 << led_n);
        auto gb = led_on ? 0 : 255;
        ImGui::TextColored(ImVec4(255, gb, gb, ALPHA_SOLID), LED_ICON);
        if (led_n > 0) {
          ImGui::SameLine();
        }
      }*/

      ImGui::Text("Application average %.3f ms/frame (%.1f FPS)",
                  1000.0f / ImGui::GetIO().Framerate, ImGui::GetIO().Framerate);
      ImGui::End();
    }

    // uut eval
    if (do_reset) {
      resetUUT(uut, simElements, &sim_time, m_trace);
    }

    if (change_filter) {
      change_filter_UUT(uut, simElements, &sim_time, m_trace);
    }

    while (!Verilated::gotFinish() && step_n_cycles > 0) {
      step_n_cycles--;
      tickUUT(uut, simElements, &sim_time, m_trace);
    }

    update_texture(output_texture_id, GL_BGRA, output_image);

    // Rendering
    ImGui::Render();
    glViewport(0, 0, (int)io.DisplaySize.x, (int)io.DisplaySize.y);
    glClear(GL_COLOR_BUFFER_BIT);
    ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
    SDL_GL_SwapWindow(window);
  }

  // Cleanup
  ImGui_ImplOpenGL3_Shutdown();
  ImGui_ImplSDL2_Shutdown();
  ImGui::DestroyContext();

  SDL_GL_DeleteContext(gl_context);
  SDL_DestroyWindow(window);
  SDL_Quit();

  for (SimElement *e : simElements) delete e;
  deinitUUT(&uut, m_trace);

  return 0;
}
