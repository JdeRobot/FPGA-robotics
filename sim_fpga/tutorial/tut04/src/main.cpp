// Authors:
//  - Based on original version of David Lobato
//  - Modified: Felipe Machado, https://github.com/felipe-m
// Tutorial 4:
//   - the image is larger than tutorial 3: 640x480

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
#define FILTER_ICON "\uf0b0"
#define FILTERS_ICON "\ue17e"

typedef cv::Vec<uint8_t, 3> BGRPixel;
// the processed image has a 4th channel, which is Alpha: transparency
typedef cv::Vec<uint8_t, 4> BGRAPixel;

const int n_leds = 8;
const int IMG_COLS = 640;
const int IMG_ROWS = 480;
const int IMG_PXLS = IMG_COLS * IMG_ROWS;
const uint8_t ALPHA_SOLID = 255;

// Original images to be processed

const char font_awesome_path[] = ASSETS_DIR "/fa-solid-900.ttf";

// Led images (centroid)
const char centroid_0000_0000_path[] = ASSETS_DIR "/leds_centroid_0000_0000.png";
const char centroid_1000_0000_path[] = ASSETS_DIR "/leds_centroid_1000_0000.png";
const char centroid_0100_0000_path[] = ASSETS_DIR "/leds_centroid_0100_0000.png";
const char centroid_0010_0000_path[] = ASSETS_DIR "/leds_centroid_0010_0000.png";
const char centroid_0001_0000_path[] = ASSETS_DIR "/leds_centroid_0001_0000.png";
const char centroid_0001_1000_path[] = ASSETS_DIR "/leds_centroid_0001_1000.png";
const char centroid_0000_1000_path[] = ASSETS_DIR "/leds_centroid_0000_1000.png";
const char centroid_0000_0100_path[] = ASSETS_DIR "/leds_centroid_0000_0100.png";
const char centroid_0000_0010_path[] = ASSETS_DIR "/leds_centroid_0000_0010.png";
const char centroid_0000_0001_path[] = ASSETS_DIR "/leds_centroid_0000_0001.png";
const int centroid_img_cols = IMG_COLS;
const int centroid_img_rows = 32;

// Proximity level images
const char prox0_path[] = ASSETS_DIR "/proximity_0.png";
const char prox1_path[] = ASSETS_DIR "/proximity_1.png";
const char prox2_path[] = ASSETS_DIR "/proximity_2.png";
const char prox3_path[] = ASSETS_DIR "/proximity_3.png";
const char prox4_path[] = ASSETS_DIR "/proximity_4.png";
const char prox5_path[] = ASSETS_DIR "/proximity_5.png";
const char prox6_path[] = ASSETS_DIR "/proximity_6.png";
const char prox7_path[] = ASSETS_DIR "/proximity_7.png";
const int prox_img_cols = 40;
const int prox_img_rows = IMG_ROWS;

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
  InputDriver(Vcolor_proc *uut,
              const cv::Mat **input_image)
      : uut{uut},
        input_image{input_image},
        input_addr{0},
        input_addr_delay{0} {}

  virtual ~InputDriver() {}

  virtual void onReset() {
    this->uut->orig_pxl = 0;
  }

  virtual void preCycle() {
  }

  virtual void postCycle() {
    // take the address asked from the UUT
    this->input_addr = this->uut->orig_addr;
    // put the pixels of the address asked, after the clock is one
    auto image_data = (*this->input_image)->ptr<BGRPixel>();
    auto px = image_data[this->input_addr_delay];

    uint8_t b = (px[0] >> 4) & 0xF;
    uint8_t g = (px[1] >> 4) & 0xF;
    uint8_t r = (px[2] >> 4) & 0xF;
    this->uut->orig_pxl = (r << 8) | (g << 4) | b;
    this->input_addr_delay = this->input_addr;
  }

 private:
  Vcolor_proc *const uut;
  const cv::Mat **input_image;
  size_t input_addr;
  size_t input_addr_delay;
  
};

// Change the color filter byt having a pulse of proc_ctrl
// to make it simpler, during this time, 
//               __    __
// clk        __|  |__|  |
//            _____
// proc_ctrl |     |______

class FilterChange : public SimElement
{
  public:
    FilterChange(Vcolor_proc *uut,
                 bool *change_filter)
      : uut{uut},
        change_filter{change_filter} {}

    virtual ~FilterChange() {}
    virtual void onReset() {}
    virtual void preCycle() {
      this->uut->proc_ctrl = *(this->change_filter);
    }
    virtual void postCycle() {
      *change_filter = false; // change filter only once
    }
  private:
    Vcolor_proc *const uut;
    bool *change_filter;
};

class OutputMonitor : public SimElement {
 public:
  OutputMonitor(Vcolor_proc *uut, cv::Mat &output_image,
        uint8_t *rgb_filter, uint8_t *centroid, uint8_t *proximity)
      : uut{uut}, output_image{output_image}, rgb_filter(rgb_filter),
        centroid(centroid), proximity(proximity) {}

  virtual ~OutputMonitor() {}

  virtual void onReset() {}

  virtual void preCycle() { // falling edge
    // I would say that this sould be on the postCycle, but having it just
    // after the rising edge the values have not been updated. I think that it
    // might be because they are combinational signals
    if (this->uut->proc_we == 1) { //if write enable
      // We are going to save the processed pixels from the UUT into an image:
      auto img_data = this->output_image.ptr<BGRAPixel>();
      // take the direction of the pixel that is being received:
      auto px = &(img_data[this->uut->proc_addr]);
  
      (*px)[0] = (this->uut->proc_pxl & 0xF) << 4; //blue. 4 LSB
      (*px)[1] = ((this->uut->proc_pxl >> 4) & 0xF) << 4; //green: bits 7..4
      (*px)[2] = ((this->uut->proc_pxl >> 8) & 0xF) << 4; //red: bits 11..8
      (*px)[3] = ALPHA_SOLID; //alpha
    }
  }
  virtual void postCycle() { // rising edge
    *(this->rgb_filter) = this->uut->rgbfilter;
    // the new_centroid signal indicates when they are updated
    // but since they don't change when it is 0, it could be omitted
    if (this->uut->new_centroid == 1) {
      *(this->centroid)  = this->uut->centroid;
      *(this->proximity) = this->uut->proximity;
    }
  }

 private:
  Vcolor_proc *const uut;
  cv::Mat output_image;
  uint8_t *rgb_filter;
  uint8_t *centroid;  // 8-bit
  uint8_t *proximity; // actually it is just 3 bits
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
                       SDL_WINDOWPOS_CENTERED, 900, 900, window_flags);
  SDL_GLContext gl_context = SDL_GL_CreateContext(window);
  SDL_GL_MakeCurrent(window, gl_context);
  SDL_GL_SetSwapInterval(1);  // Enable vsync

  // Setup Dear ImGui context
  IMGUI_CHECKVERSION();
  ImGui::CreateContext();
  ImGuiIO &io = ImGui::GetIO();
  // Load a first font
  ImFont *font = io.Fonts->AddFontDefault();

  // Will not be copied by AddFont* so keep in scope.
  static const ImWchar icons_ranges[] = {0xe005, 0xf8ff, 0};
  ImFontConfig icons_config;
  icons_config.MergeMode = true;
  icons_config.PixelSnapH = true;
  // Merge into first font
  io.Fonts->AddFontFromFileTTF(font_awesome_path, 14.0f, &icons_config, icons_ranges);
  io.Fonts->Build();

  // Setup Dear ImGui style
  //ImGui::StyleColorsDark();
  ImGui::StyleColorsLight();

  // Setup Platform/Renderer backends
  ImGui_ImplSDL2_InitForOpenGL(window, gl_context);
  ImGui_ImplOpenGL3_Init(glsl_version);

  // output image is cols x row, with 4 channels (C4) of 8-bit unsigned
  cv::Mat output_image(IMG_ROWS, IMG_COLS, CV_8UC4);

  // Centroid images
  const cv::Mat centroid_0000_0000 = cv::imread(cv::String{centroid_0000_0000_path});
  assert(centroid_0000_0000.channels() == 3 && centroid_0000_0000.cols == centroid_img_cols &&
         centroid_0000_0000.rows == centroid_img_rows && centroid_0000_0000.isContinuous());
  const cv::Mat centroid_1000_0000 = cv::imread(cv::String{centroid_1000_0000_path});
  const cv::Mat centroid_0100_0000 = cv::imread(cv::String{centroid_0100_0000_path});
  const cv::Mat centroid_0010_0000 = cv::imread(cv::String{centroid_0010_0000_path});
  const cv::Mat centroid_0001_0000 = cv::imread(cv::String{centroid_0001_0000_path});
  const cv::Mat centroid_0001_1000 = cv::imread(cv::String{centroid_0001_1000_path});
  const cv::Mat centroid_0000_1000 = cv::imread(cv::String{centroid_0000_1000_path});
  const cv::Mat centroid_0000_0100 = cv::imread(cv::String{centroid_0000_0100_path});
  const cv::Mat centroid_0000_0010 = cv::imread(cv::String{centroid_0000_0010_path});
  const cv::Mat centroid_0000_0001 = cv::imread(cv::String{centroid_0000_0001_path});

  // Proximity images
  const cv::Mat prox0 = cv::imread(cv::String{prox0_path});
  assert(prox0.channels() == 3 && prox0.cols == prox_img_cols &&
         prox0.rows == prox_img_rows && prox0.isContinuous());
  const cv::Mat prox1 = cv::imread(cv::String{prox1_path});
  const cv::Mat prox2 = cv::imread(cv::String{prox2_path});
  const cv::Mat prox3 = cv::imread(cv::String{prox3_path});
  const cv::Mat prox4 = cv::imread(cv::String{prox4_path});
  const cv::Mat prox5 = cv::imread(cv::String{prox5_path});
  const cv::Mat prox6 = cv::imread(cv::String{prox6_path});
  const cv::Mat prox7 = cv::imread(cv::String{prox7_path});

  GLuint output_texture_id = create_texture(GL_BGRA, output_image);

  GLuint centroid_0000_0000_texture = create_texture(GL_BGR, centroid_0000_0000);
  GLuint centroid_1000_0000_texture = create_texture(GL_BGR, centroid_1000_0000);
  GLuint centroid_0100_0000_texture = create_texture(GL_BGR, centroid_0100_0000);
  GLuint centroid_0010_0000_texture = create_texture(GL_BGR, centroid_0010_0000);
  GLuint centroid_0001_0000_texture = create_texture(GL_BGR, centroid_0001_0000);
  GLuint centroid_0001_1000_texture = create_texture(GL_BGR, centroid_0001_1000);
  GLuint centroid_0000_1000_texture = create_texture(GL_BGR, centroid_0000_1000);
  GLuint centroid_0000_0100_texture = create_texture(GL_BGR, centroid_0000_0100);
  GLuint centroid_0000_0010_texture = create_texture(GL_BGR, centroid_0000_0010);
  GLuint centroid_0000_0001_texture = create_texture(GL_BGR, centroid_0000_0001);

  GLuint prox0_texture = create_texture(GL_BGR, prox0);
  GLuint prox1_texture = create_texture(GL_BGR, prox1);
  GLuint prox2_texture = create_texture(GL_BGR, prox2);
  GLuint prox3_texture = create_texture(GL_BGR, prox3);
  GLuint prox4_texture = create_texture(GL_BGR, prox4);
  GLuint prox5_texture = create_texture(GL_BGR, prox5);
  GLuint prox6_texture = create_texture(GL_BGR, prox6);
  GLuint prox7_texture = create_texture(GL_BGR, prox7);

  // -------------------- Init Video Input 
  cv::Mat input_feed;
  cv::Mat resized_input_feed;
  cv::VideoCapture cap(0);


  if (!cap.isOpened()) {
      std::cout << "cannot open camera";
  }

  cap >> input_feed;
  cv::resize(input_feed,resized_input_feed,cv::Size(IMG_COLS,IMG_ROWS),cv::INTER_LINEAR);

  // init dut, tracing and sim elements
  Vcolor_proc *uut = initUUT(argc, argv);
  VerilatedVcdC *m_trace = initTrace(uut);

  const cv::Mat *input_image = &resized_input_feed;

  // Our state
  bool done = false;
  bool show_demo_window = false;
  bool running = false;
  bool do_reset = false;
  bool do_change_filter = false;
  bool change_filter = false;
  int step_n_cycles = 0;
  int frames_per_iteration = 1;
  int cycles_per_iteration = frames_per_iteration * IMG_PXLS;

  // filter, it is a 3 bit signal, 
  uint8_t rgb_filter   = 0x00;  // no filter, it is a 3 bit signal
  bool red_filter_on   = false;
  bool green_filter_on = false;
  bool blue_filter_on  = false;

  // proximity and centroid values of the detected object
  uint8_t centroid  = 0;
  uint8_t proximity = 0;
  const int NBITS_CENTROID = 8;

  // create an array of simulation elements, which are the input driver
  // and the monitor of the outputs
  std::vector<SimElement *> simElements;
  // add these simulation elements to the array:
  simElements.push_back(new InputDriver(uut, &input_image));
  simElements.push_back(new FilterChange(uut, &change_filter));
  simElements.push_back(new OutputMonitor(uut, output_image, &rgb_filter,
                                          &centroid, &proximity));

  vluint64_t sim_time = 0;
  resetUUT(uut, simElements, &sim_time, m_trace); // reset unit under test

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

    // Most of the sample code is in ImGui::ShowDemoWindow()
    // You can browse its code to learn more about Dear ImGui!).
    if (show_demo_window) ImGui::ShowDemoWindow(&show_demo_window);
    // main window
    {
      ImGui::Begin("Color processor");
      //ImGui::Checkbox("Demo Window", &show_demo_window);

      ImGui::InputInt("Frames per iteration", &frames_per_iteration);
      running ^= ImGui::Button(running ? STOP_ICON " Stop" : START_ICON " Start");ImGui::SameLine();
      do_reset = ImGui::Button(RESET_ICON " Reset");

      if (running || ImGui::Button(STEP_ICON " Step frame")) {
        step_n_cycles = frames_per_iteration * IMG_PXLS;
      }

      cap >> input_feed;
      cv::resize(input_feed,resized_input_feed,cv::Size(IMG_COLS,IMG_ROWS),cv::INTER_LINEAR);

//      assert(input_feed.channels() == 3 && input_feed.cols == cols &&
//         input_feed.rows == rows && input_feed.isContinuous());
      input_image = &resized_input_feed;

      GLuint input_texture_vid_id = create_texture(GL_BGR, resized_input_feed);

      if (change_filter == false) {
        do_change_filter = ImGui::Button(FILTER_ICON " Change filter");
        if (do_change_filter) {
          // if we dont do this, the filter change will be lost if not running the simulation
          change_filter = true;
        }
      } else {
        ImGui::TextColored(ImVec4(1.0f,0,0,1.0f),"Step or Start simulation to change filter");
      }

      ImGui::Text("RGB filter: %x", rgb_filter);
      red_filter_on   = ((rgb_filter & 0x04) != 0);
      green_filter_on = ((rgb_filter & 0x02) != 0);
      blue_filter_on  = ((rgb_filter & 0x01) != 0);
      if (red_filter_on) {
        ImGui::Text("Red ");
        ImGui::SameLine();
      } 
      if (green_filter_on) {
        ImGui::Text("Green ");
        ImGui::SameLine();
      } 
      if (blue_filter_on) {
        ImGui::Text("Blue ");
        ImGui::SameLine();
      } 
      if (rgb_filter == 0) {
        ImGui::Text("No ");
        ImGui::SameLine();
      } else {
      }
      ImGui::Text("Filter");


      // -- test images
      ImGui::Text("Input video frame %d x %d (tex id=%p)", input_image->cols,
                  input_image->rows, (void *)(intptr_t)input_texture_vid_id);

      // -- Input video
      ImGui::Image((void *)(intptr_t)input_texture_vid_id,
                             ImVec2(input_image->cols, input_image->rows));

      ImGui::Text("Output frame buffer %d x %d (tex id=%p)", output_image.cols,
                  output_image.rows, (void *)(intptr_t)output_texture_id);
      ImGui::Image((void *)(intptr_t)output_texture_id,
                   ImVec2(output_image.cols, output_image.rows));
      ImGui::SameLine();
      
      switch (proximity) {
        case 0:
          ImGui::Image((void *)(intptr_t)prox0_texture,
                       ImVec2(prox_img_cols, prox_img_rows));
          break;
        case 1:
          ImGui::Image((void *)(intptr_t)prox1_texture,
                       ImVec2(prox_img_cols, prox_img_rows));
          break;
        case 2:
          ImGui::Image((void *)(intptr_t)prox2_texture,
                       ImVec2(prox_img_cols, prox_img_rows));
          break;
        case 3:
          ImGui::Image((void *)(intptr_t)prox3_texture,
                       ImVec2(prox_img_cols, prox_img_rows));
          break;
        case 4:
          ImGui::Image((void *)(intptr_t)prox4_texture,
                       ImVec2(prox_img_cols, prox_img_rows));
          break;
        case 5:
          ImGui::Image((void *)(intptr_t)prox5_texture,
                       ImVec2(prox_img_cols, prox_img_rows));
          break;
        case 6:
          ImGui::Image((void *)(intptr_t)prox6_texture,
                       ImVec2(prox_img_cols, prox_img_rows));
          break;
        case 7:
          ImGui::Image((void *)(intptr_t)prox7_texture,
                       ImVec2(prox_img_cols, prox_img_rows));
          break;
        default:
          ImGui::Text("Proximity wrong value %d", proximity);
      }
      

      switch (centroid) {
        case 0:
          ImGui::Image((void *)(intptr_t)centroid_0000_0000_texture,
                       ImVec2(centroid_img_cols, centroid_img_rows));
          break;
        case 1:
          ImGui::Image((void *)(intptr_t)centroid_1000_0000_texture,
                       ImVec2(centroid_img_cols, centroid_img_rows));
          break;
        case 2:
          ImGui::Image((void *)(intptr_t)centroid_0100_0000_texture,
                       ImVec2(centroid_img_cols, centroid_img_rows));
          break;
        case 4:
          ImGui::Image((void *)(intptr_t)centroid_0010_0000_texture,
                       ImVec2(centroid_img_cols, centroid_img_rows));
          break;
        case 8:
          ImGui::Image((void *)(intptr_t)centroid_0001_0000_texture,
                       ImVec2(centroid_img_cols, centroid_img_rows));
          break;
        case 16:
          ImGui::Image((void *)(intptr_t)centroid_0000_1000_texture,
                       ImVec2(centroid_img_cols, centroid_img_rows));
          break;
        case 24:
          ImGui::Image((void *)(intptr_t)centroid_0001_1000_texture,
                       ImVec2(centroid_img_cols, centroid_img_rows));
          break;
        case 32:
          ImGui::Image((void *)(intptr_t)centroid_0000_0100_texture,
                       ImVec2(centroid_img_cols, centroid_img_rows));
          break;
        case 64:
          ImGui::Image((void *)(intptr_t)centroid_0000_0010_texture,
                       ImVec2(centroid_img_cols, centroid_img_rows));
          break;
        case 128:
          ImGui::Image((void *)(intptr_t)centroid_0000_0001_texture,
                       ImVec2(centroid_img_cols, centroid_img_rows));
          break;
        default:
          ImGui::Text("centroid wrong value %d", centroid);
      }
      // left leds are the least significat bits: bit 0 is the leftmost
      for (int bit_i = NBITS_CENTROID-1; bit_i >= 0; bit_i--) {
        bool led_on = centroid & (128 >> bit_i);
        auto gb = led_on ? 0 : 255;
        ImGui::TextColored(ImVec4(255, gb, gb, ALPHA_SOLID), LED_ICON);
        //if (bit_i > 0) {
        ImGui::SameLine();
        //}
      }
      ImGui::Text("Centroid: 0x%x - Proximity: %i", centroid, proximity);
      //ImGui::SameLine();

      ImGui::Text("Application average %.3f ms/frame (%.1f FPS)",
                  1000.0f / ImGui::GetIO().Framerate, ImGui::GetIO().Framerate);
      ImGui::End();
    }

    // uut eval
    if (do_reset) {
      resetUUT(uut, simElements, &sim_time, m_trace);
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
