// imgui headers
#include <SDL.h>
#include <SDL_opengl.h>
#include <assert.h>
#include <stdio.h>

#include <opencv2/opencv.hpp>
#include <opencv2/core.hpp>
#include <opencv2/imgcodecs.hpp>

#ifndef ASSETS_DIR
#error ASSETS_DIR undefined
#endif

#include "imgui.h"
#include "imgui_impl_opengl3.h"
#include "imgui_impl_sdl.h"

// verilator headers
#include "Vdesign_top.h"
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
const int cols = 80;
const int rows = 60;
const uint8_t ALPHA_SOLID = 255;

const char input_image_1_path[] = ASSETS_DIR "/red_ball_center_80x60.png";

const char font_awesome_path[] = ASSETS_DIR "/fa-solid-900.ttf";

class SimElement {
 public:
  virtual ~SimElement() {}
  virtual void onReset() {}
  virtual void postReset() {}
  virtual void preCycle() {}
  virtual void postCycle() {}
};

class InputDriver : public SimElement {
 public:
  InputDriver(Vdesign_top *top, const uint8_t *wRgbfilter,
              const cv::Mat **input_image)
      : top{top},
        wRgbfilter{wRgbfilter},
        input_image{input_image},
        input_addr{0} {}

  virtual ~InputDriver() {}

  virtual void onReset() { this->input_addr = 0; }

  virtual void preCycle() {}

  virtual void postCycle() {
    auto image_data = (*this->input_image)->ptr<BGRPixel>();
    auto px = image_data[this->input_addr];

    this->top->addrin = this->input_addr;
    this->top->wea = 1;
    
    uint8_t b = (px[0] >> 4) & 0xF;
    uint8_t g = (px[1] >> 4) & 0xF;
    uint8_t r = (px[2] >> 4) & 0xF;
    this->top->datain = (r << 8) | (g << 4) | b;

    this->top->wRgbfilter = *(this->wRgbfilter);

    this->input_addr++;
    if (this->input_addr >=
        ((*this->input_image)->rows * (*this->input_image)->cols)) {
      this->input_addr = 0;
    }
  }

 private:
  Vdesign_top *const top;
  const uint8_t *wRgbfilter;
  const cv::Mat **input_image;
  size_t input_addr;
};

class OutputMonitor : public SimElement {
 public:
  OutputMonitor(Vdesign_top *top, cv::Mat &output_image)
      : top{top}, output_image{output_image}, output_addr{0} {}

  virtual ~OutputMonitor() {}

  virtual void onReset() { this->output_addr = 0; }

  virtual void preCycle() { this->top->addrout = this->output_addr; }

  virtual void postCycle() {
    auto image_data = this->output_image.ptr<BGRAPixel>();
    auto px = &(image_data[this->output_addr]);

    (*px)[0] = (top->dataout & 0xF) << 4; //b
    (*px)[1] = ((top->dataout >> 4) & 0xF) << 4; //g
    (*px)[2] = ((top->dataout >> 8) & 0xF) << 4; //r
    (*px)[3] = ALPHA_SOLID; //alpha

    this->output_addr++;
    if (this->output_addr >=
        (this->output_image.rows * this->output_image.cols)) {
      this->output_addr = 0;
    }
  }

 private:
  Vdesign_top *const top;
  cv::Mat output_image;
  size_t output_addr;
};

Vdesign_top *initDut(int argc, char **argv) {
  Verilated::randReset(2);  // Randomize all bits
  Verilated::traceEverOn(true);
  Verilated::commandArgs(argc, argv);
  Vdesign_top *top = new Vdesign_top;

  return top;
}

void deinitDut(Vdesign_top **top, VerilatedVcdC *m_trace) {
  if (m_trace != 0) {
    m_trace->flush();
    m_trace->close();
    delete m_trace;
  }
  (*top)->final();
  delete *top;
  *top = 0;
}

VerilatedVcdC *initTrace(Vdesign_top *top) {
  VerilatedVcdC *m_trace = new VerilatedVcdC;
  top->trace(m_trace, 99);
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

void tickDut(Vdesign_top *top, const std::vector<SimElement *> &sim_elements,
             vluint64_t *sim_time, VerilatedVcdC *m_trace = 0) {
  top->clk = 0;
  top->eval();

  for (SimElement *e : sim_elements) e->preCycle();
  top->clk = 1;
  top->eval();
  for (SimElement *e : sim_elements) e->postCycle();
  dumpTrace(m_trace, sim_time);

  top->clk = 0;
  top->eval();
  dumpTrace(m_trace, sim_time, true);
}

void resetDut(Vdesign_top *top, const std::vector<SimElement *> &sim_elements,
              vluint64_t *sim_time, VerilatedVcdC *m_trace = 0,
              int reset_cycles = 10) {
  top->rst = 1;
  for (int i = 0; i < reset_cycles; i++) {
    tickDut(top, sim_elements, sim_time, m_trace);
  }
  top->rst = 0;

  for (SimElement *e : sim_elements) e->onReset();
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
  SDL_GL_SetAttribute(SDL_GL_DOUBLEBUFFER, 1);
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
  assert(input_image_1.channels() == 3 && input_image_1.cols == cols &&
         input_image_1.rows == rows && input_image_1.isContinuous());

  
  //Init Video Input 
  cv::Mat input_feed;
  cv::Mat resized_input_feed;
  cv::VideoCapture cap(0);

  if (!cap.isOpened()) {

	  std::cout << "cannot open camera";
  }


  cv::Mat output_image(rows, cols, CV_8UC4);

  uint8_t wRgbfilter = 0x00;  // no filter

  // create & load input/output textures
  GLuint input_texture_1_id = create_texture(GL_BGR, input_image_1);

  GLuint output_texture_id = create_texture(GL_BGRA, output_image);

  // init dut, tracing and sim elements
  Vdesign_top *top = initDut(argc, argv);
  VerilatedVcdC *m_trace = initTrace(top);

  const cv::Mat *input_image = &input_image_1;

  std::vector<SimElement *> simElements;
  simElements.push_back(new InputDriver(top, &wRgbfilter, &input_image));
  simElements.push_back(new OutputMonitor(top, output_image));

  vluint64_t sim_time = 0;
  resetDut(top, simElements, &sim_time, m_trace);

  // Our state
  bool done = false;
  bool show_demo_window = false;
  bool running = false;
  bool do_reset = false;
  int step_n_cycles = 0;
  int cycles_per_iteration = 5;

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

      ImGui::InputInt("Cycles per iteration", &cycles_per_iteration);
      running ^= ImGui::Button(running ? STOP_ICON " Stop" : START_ICON " Start");ImGui::SameLine();
      do_reset = ImGui::Button(RESET_ICON " Reset");

      if (running || ImGui::Button(STEP_ICON " Step")) {
        step_n_cycles = cycles_per_iteration;
      }

      cap >> input_feed;
      cv::resize(input_feed,resized_input_feed,cv::Size(cols,rows),cv::INTER_LINEAR);

//      assert(input_feed.channels() == 3 && input_feed.cols == cols &&
//         input_feed.rows == rows && input_feed.isContinuous());

	    input_image = &resized_input_feed;

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
      for (int i = n_leds; i > 0; i--) {
        int led_n = i - 1;
        bool led_on = top->leds & (1 << led_n);
        auto gb = led_on ? 0 : 255;
        ImGui::TextColored(ImVec4(255, gb, gb, ALPHA_SOLID), LED_ICON);
        if (led_n > 0) {
          ImGui::SameLine();
        }
      }

      ImGui::Text("Application average %.3f ms/frame (%.1f FPS)",
                  1000.0f / ImGui::GetIO().Framerate, ImGui::GetIO().Framerate);
      ImGui::End();
    }

    // dut eval
    if (do_reset) {
      resetDut(top, simElements, &sim_time, m_trace);
    }

    while (!Verilated::gotFinish() && step_n_cycles > 0) {
      step_n_cycles--;
      tickDut(top, simElements, &sim_time, m_trace);
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
  deinitDut(&top, m_trace);

  return 0;
}
