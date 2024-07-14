// imgui headers
#include <SDL.h>
#include <SDL_opengl.h>
#include <assert.h>
#include <stdio.h>

#ifndef ASSETS_DIR
#error ASSETS_DIR undefined
#endif

#include "imgui.h"
#include "imgui_impl_opengl3.h"
#include "imgui_impl_sdl2.h"

// verilator headers
#include "Vdesign_top.h"
#include "Vdesign_top__Syms.h"
#include "verilated.h"
#include "verilated_vcd_c.h"


//ROS & opencv
#include <ros/ros.h>
#include <geometry_msgs/Twist.h>

#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>

#include<bitset>

#define LED_ICON "\uf111"
#define START_ICON "\uf04b"
#define STOP_ICON "\uf04d"
#define STEP_ICON "\uf051"
#define RESET_ICON "\uf0e2"

typedef cv::Vec<uint8_t, 3> BGRPixel;
typedef cv::Vec<uint8_t, 4> BGRAPixel;

const int n_pos_leds = 8;
const int n_dis_leds = 3;
const int IMG_COLS = 160;
const int IMG_ROWS = 120;
const int IMG_PXLS = IMG_COLS * IMG_ROWS;
const uint8_t ALPHA_SOLID = 255;

const char input_image_1_path[] = ASSETS_DIR "/ebu_colorbars_nosign.png";

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
    
    this->top->capture_newframe = 1;
    
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


void publishVW(double v, double w, ros::Publisher &pub){

geometry_msgs::Twist base_cmd;

base_cmd.linear.x = base_cmd.linear.y = base_cmd.angular.z = 0;

base_cmd.linear.x = v;
base_cmd.angular.z = w;

pub.publish(base_cmd);

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


cv::Mat input_feed;
cv::Mat resized_input_feed;

void imageCallback(const sensor_msgs::ImageConstPtr& msg)
{
  try
  {

     input_feed = cv_bridge::toCvCopy(msg, "bgr8")->image;

     cv::resize(input_feed,resized_input_feed,cv::Size(IMG_COLS,IMG_ROWS),cv::INTER_LINEAR);
     // cv::imshow("view", cv_bridge::toCvShare(msg, "bgr8")->image);
     // cv::waitKey(10);
  }
  catch (cv_bridge::Exception& e)
  {
    ROS_ERROR("Could not convert from '%s' to 'bgr8'.", msg->encoding.c_str());
  }
}


int16_t twocompl16_toint(uint16_t data)
{
  // if it is positive, just return the number
  // if it is negative (convert to int to avoid overflow) flip the bits , add 1 and put a minus
  // For example
  // 1000 : -8 ->  0111 + 1 -> 1000 (8) -> (-1)-> -8
  // 1001 : -7 ->  0110 + 1 -> 0111 (7) -> (-1)-> -7
  // 1010 : -6 ->  0101 + 1 -> 0110 (6) -> (-1)-> -6
  // 1111 : -1 ->  0000 + 1 -> 0001 (1) -> (-1)-> -1

  // Take 15 bits of the data (last bit is the sign)
  const uint16_t DATAMASK = 0x7FFF;
  // Sign is bit 15 (starting from zero) with the 15 bit data
  const uint16_t SIGNMASK = 0x8000;
  const uint16_t SIGNBIT = 15;

  int16_t sign;
  int temp;
  int sign_data;

  sign  = (int16_t)((data & SIGNMASK) >> SIGNBIT); // get the sign
  if (sign) { // if it is negative, get the data without sign, flip the bits and add 1
      temp = (int) ((~data) & DATAMASK);
      temp = temp + 1;
      sign_data = - temp;
  } else { // if it is positive, it is just the number
    sign_data = (int) data;
  }
  return(sign_data);
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
  // ImGui::StyleColorsDark();
  ImGui::StyleColorsLight();

  // Setup Platform/Renderer backends
  ImGui_ImplSDL2_InitForOpenGL(window, gl_context);
  ImGui_ImplOpenGL3_Init(glsl_version);

  // init buffers

  const cv::Mat input_image_1 = cv::imread(cv::String{input_image_1_path});
  //assert(input_image_1.channels() == 3 && input_image_1.cols == IMG_ROWS &&
  //       input_image_1.rows == IMG_ROWS && input_image_1.isContinuous());

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

  uint8_t centroid  = 0;
  uint8_t proximity = 0;
  const int NBITS_CENTROID = 8;

  //Init Video Input 
  //cv::Mat input_feed;
  
  input_feed = input_image_1;
  //cv::Mat resized_input_feed;


  cv::resize(input_feed,resized_input_feed,cv::Size(IMG_COLS,IMG_ROWS),cv::INTER_LINEAR);
  uint8_t wRgbfilter = 0x00;  // no filter
  const cv::Mat *input_image = &resized_input_feed;

  cv::Mat output_image(IMG_ROWS, IMG_COLS, CV_8UC4);


  GLuint output_texture_id = create_texture(GL_BGRA, output_image);

  // init dut, tracing and sim elements
  Vdesign_top *top = initDut(argc, argv);
  VerilatedVcdC *m_trace = initTrace(top);

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
  int frames_per_iteration = 1;
  int cycles_per_iteration = frames_per_iteration * IMG_PXLS;
  

  //ROS Integration
  ros::init(argc, argv, "image_listener");

  // /image_raw
  ros::NodeHandle image_nh;

  image_transport::ImageTransport it(image_nh);
  image_transport::Subscriber sub = it.subscribe("turtlebot2/camera/image_raw", 1, imageCallback);

  // /cmd_vel
  ros::NodeHandle motor_nh;

  ros::Publisher cmd_vel_pub_;
  cmd_vel_pub_ = motor_nh.advertise<geometry_msgs::Twist>("turtlebot2/cmd_vel", 1);

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

    //ROS Callback handling attached to the main loop
    ros::spinOnce();

    // Start the Dear ImGui frame
    ImGui_ImplOpenGL3_NewFrame();
    ImGui_ImplSDL2_NewFrame();
    ImGui::NewFrame();

    if (show_demo_window) ImGui::ShowDemoWindow(&show_demo_window);
    // main window
    {
      ImGui::Begin("Verilog Color Processor");
      //ImGui::Checkbox("Demo Window", &show_demo_window);

      ImGui::InputInt("Frames per iteration", &frames_per_iteration);
      //ImGui::InputInt("Cycles per iteration", &cycles_per_iteration);
      running ^= ImGui::Button(running ? STOP_ICON " Stop" : START_ICON " Start");ImGui::SameLine();
      do_reset = ImGui::Button(RESET_ICON " Reset");

      if (running || ImGui::Button(STEP_ICON " Step frame")) {
        step_n_cycles = frames_per_iteration * IMG_PXLS;
      }

      //input_image = &resized_input_feed;

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
        wRgbfilter = (((uint8_t)red_filter_check) << 2) |
                     (((uint8_t)green_filter_check) << 1) |
                     (uint8_t)blue_filter_check;
      }


      // -- Input video
      // create & load input/output textures
      GLuint input_texture_id = create_texture(GL_BGR, resized_input_feed);
      ImGui::Text("Input video frame %d x %d (tex id=%p)", input_image->cols,
                  input_image->rows, (void *)(intptr_t)input_texture_id);
      ImGui::Image((void *)(intptr_t)input_texture_id,
                             ImVec2(input_image->cols, input_image->rows));

      ImGui::Text("Output frame buffer %d x %d (tex id=%p)", output_image.cols,
                  output_image.rows, (void *)(intptr_t)output_texture_id);
      ImGui::Image((void *)(intptr_t)output_texture_id,
                   ImVec2(output_image.cols, output_image.rows));
      ImGui::SameLine();
      
      centroid = top->leds;
      proximity = top->proximity;
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
      ImGui::Text("Centroid: 0x%x - Proximity: %i", centroid, proximity);
      //ImGui::SameLine();

      // Read the DPS from the Verilog Control
      int dps_lft = (int) twocompl16_toint(top->motor_dps_left_o);
      int dps_rgt = (int) twocompl16_toint(top->motor_dps_rght_o);

      
      ImGui::Text("dps_lft =%i; dps_rght=%i ", dps_lft, dps_rgt);
      // Check if the DPS is 0 to force a continuous locking of the target.
      //if (x16R == 0 && x16L == 0) {
      //  x16R = 75;
      //  x16L = -75;
      //}
      
      // Convert DPS to V and W to publish the topic
      static double v;
      static double w;
      w = (float(dps_rgt - dps_lft) * 0.0015 );
      v = 2*(float(dps_rgt + dps_lft) / 3192);

      // ROS Publish
      publishVW(v,w,cmd_vel_pub_);
      
      ImGui::Text("Robot speed: v=%.3f m/s; w=%.3f rad/s",
                  v, w);
   
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
