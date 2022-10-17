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
#include "imgui_impl_sdl.h"

#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"

// verilator headers
#include "VTopPixelProcessor.h"
#include "verilated.h"
#include "verilated_vcd_c.h"

const int channels = 4;
const uint8_t ALPHA_SOLID = 255;

const char input_image_path[] = ASSETS_DIR "/ebu_colorbars_96x72.png";

class SimElement {
 public:
  virtual ~SimElement() {
  }
  virtual void onReset() {
  }
  virtual void postReset() {
  }
  virtual void preCycle() {
  }
  virtual void postCycle() {
  }
};

class InputDriver : public SimElement {
 public:
  InputDriver(VTopPixelProcessor *top, uint8_t *filter_buffer, const size_t filter_buffer_size,
              uint8_t *input_buffer, const size_t input_buffer_size, const uint8_t channels = 4)
      : top{top},
        filter_buffer{filter_buffer},
        filter_buffer_size{filter_buffer_size},
        input_buffer{input_buffer},
        input_buffer_size{input_buffer_size},
        channels{channels} {
    assert(filter_buffer_size >= 3);
  }

  virtual ~InputDriver() {
  }

  virtual void onReset() {
  }

  virtual void preCycle() {
  }

  virtual void postCycle() {
    auto px_idx = top->io_pixel_in_addr * this->channels;
    assert(px_idx >= 0 && px_idx < this->input_buffer_size);
    auto px = input_buffer + px_idx;

    top->io_pixel_in_payload_r = px[0];
    top->io_pixel_in_payload_g = px[1];
    top->io_pixel_in_payload_b = px[2];

    top->io_filter_r = filter_buffer[0];
    top->io_filter_g = filter_buffer[1];
    top->io_filter_b = filter_buffer[2];
  }

 private:
  VTopPixelProcessor *const top;
  uint8_t *const filter_buffer;
  const size_t filter_buffer_size;
  uint8_t *const input_buffer;
  const size_t input_buffer_size;
  const uint8_t channels = 4;
};

class OutputMonitor : public SimElement {
 public:
  OutputMonitor(VTopPixelProcessor *top, uint8_t *output_buffer, const size_t output_buffer_size,
                const uint8_t channels = 4)
      : top{top},
        output_buffer{output_buffer},
        output_buffer_size{output_buffer_size},
        channels{channels} {
  }

  virtual ~OutputMonitor() {
  }

  virtual void onReset() {
  }

  virtual void preCycle() {
  }

  virtual void postCycle() {
    auto px_idx = top->io_pixel_out_addr * this->channels;
    assert(px_idx >= 0 && px_idx < output_buffer_size);
    auto px = output_buffer + px_idx;

    px[0] = top->io_pixel_out_payload_r;
    px[1] = top->io_pixel_out_payload_g;
    px[2] = top->io_pixel_out_payload_b;
    px[3] = ALPHA_SOLID;
  }

 private:
  VTopPixelProcessor *const top;
  uint8_t *const output_buffer;
  const size_t output_buffer_size;
  const uint8_t channels = 4;
};

VTopPixelProcessor *initDut(int argc, char **argv) {
  Verilated::randReset(2);  // Randomize all bits
  Verilated::traceEverOn(true);
  Verilated::commandArgs(argc, argv);
  VTopPixelProcessor *top = new VTopPixelProcessor;

  return top;
}

void deinitDut(VTopPixelProcessor **top, VerilatedVcdC *m_trace) {
  if (m_trace != 0) {
    m_trace->flush();
    m_trace->close();
  }
  (*top)->final();
  delete *top;
  *top = 0;
}

VerilatedVcdC *initTrace(VTopPixelProcessor *top) {
  VerilatedVcdC *m_trace = new VerilatedVcdC;
  top->trace(m_trace, 99);
  m_trace->open("sim.vcd");
  return m_trace;
}

void dumpTrace(VerilatedVcdC *m_trace, vluint64_t *sim_time, bool flush = false) {
  if (m_trace != 0) {
    m_trace->dump(*sim_time);
    if (flush) m_trace->flush();
  }
  *sim_time += 1;
}

void tickDut(VTopPixelProcessor *top, const std::vector<SimElement *> &sim_elements,
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

void resetDut(VTopPixelProcessor *top, const std::vector<SimElement *> &sim_elements,
              vluint64_t *sim_time, VerilatedVcdC *m_trace = 0, int reset_cycles = 10) {
  top->reset = 1;
  for (int i = 0; i < reset_cycles; i++) {
    tickDut(top, sim_elements, sim_time, m_trace);
  }
  top->reset = 0;

  for (SimElement *e : sim_elements) e->onReset();
}

GLuint create_texture(GLenum format, size_t width, size_t height, uint8_t *pixel_data) {
  if (pixel_data == NULL) return 0;

  // Create a OpenGL texture identifier
  GLuint image_texture;
  glGenTextures(1, &image_texture);
  glBindTexture(GL_TEXTURE_2D, image_texture);

  // Setup filtering parameters for display
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);  // This is required on WebGL for non power-of-two textures
  glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);  // Same

  // Upload pixels into texture
#if defined(GL_UNPACK_ROW_LENGTH) && !defined(__EMSCRIPTEN__)
  glPixelStorei(GL_UNPACK_ROW_LENGTH, 0);
#endif
  glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, width, height, 0, format, GL_UNSIGNED_BYTE, pixel_data);
  
  return image_texture;
}

bool update_texture(GLuint texture_id, GLenum format, size_t width, size_t height, uint8_t *pixel_data) {
  if (pixel_data == NULL) return false;

  glBindTexture(GL_TEXTURE_2D, texture_id);
  glTexSubImage2D(GL_TEXTURE_2D, 0, 0, 0, width, height, format, GL_UNSIGNED_BYTE, pixel_data);

  return true;
}

// Main code
int main(int argc, char **argv) {
  printf("input image path: %s\n", input_image_path);


  // init imgui
  //
  // Setup SDL
  // (Some versions of SDL before <2.0.10 appears to have performance/stalling
  // issues on a minority of Windows systems, depending on whether
  // SDL_INIT_GAMECONTROLLER is enabled or disabled.. updating to latest version
  // of SDL is recommended!)
  if (SDL_Init(SDL_INIT_VIDEO | SDL_INIT_TIMER | SDL_INIT_GAMECONTROLLER) != 0) {
    printf("Error: %s\n", SDL_GetError());
    return -1;
  }

  // Decide GL+GLSL versions
#if defined(__APPLE__)
  // GL 3.2 Core + GLSL 150
  const char *glsl_version = "#version 150";
  SDL_GL_SetAttribute(SDL_GL_CONTEXT_FLAGS,
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
      (SDL_WindowFlags) (SDL_WINDOW_OPENGL | SDL_WINDOW_RESIZABLE | SDL_WINDOW_ALLOW_HIGHDPI);
  SDL_Window *window = SDL_CreateWindow("Pixel Processor simulator", SDL_WINDOWPOS_CENTERED,
                                        SDL_WINDOWPOS_CENTERED, 1280, 720, window_flags);
  SDL_GLContext gl_context = SDL_GL_CreateContext(window);
  SDL_GL_MakeCurrent(window, gl_context);
  SDL_GL_SetSwapInterval(1);  // Enable vsync

  // Setup Dear ImGui context
  IMGUI_CHECKVERSION();
  ImGui::CreateContext();
  ImGuiIO &io = ImGui::GetIO();
  (void) io;
  // io.ConfigFlags |= ImGuiConfigFlags_NavEnableKeyboard;     // Enable
  // Keyboard Controls io.ConfigFlags |= ImGuiConfigFlags_NavEnableGamepad; //
  // Enable Gamepad Controls

  // Setup Dear ImGui style
  ImGui::StyleColorsDark();
  // ImGui::StyleColorsClassic();

  // Setup Platform/Renderer backends
  ImGui_ImplSDL2_InitForOpenGL(window, gl_context);
  ImGui_ImplOpenGL3_Init(glsl_version);

  // init buffers
  uint8_t filter_buffer[3] = {0, 0, 0};
  int input_width, input_height;
  uint8_t *input_buffer;

  input_buffer = stbi_load(input_image_path, &input_width, &input_height, NULL, channels);
  assert(input_buffer != 0);

  const size_t input_buffer_size = input_width * input_height * channels;

  const int output_width = input_width;
  const int output_height = input_height;
  const size_t output_buffer_size = output_width * output_height * channels;
  uint8_t output_buffer[output_buffer_size];

  // create & load input/output textures
  GLuint input_texture_id = create_texture(GL_RGBA, input_width, input_height, input_buffer);
  GLuint output_texture_id = create_texture(GL_RGBA, output_width, output_height, output_buffer);


  // init dut, tracing and sim elements
  VTopPixelProcessor *top = initDut(argc, argv);
  VerilatedVcdC *m_trace = initTrace(top);

  std::vector<SimElement *> simElements;
  simElements.push_back(
      new InputDriver(top, filter_buffer, sizeof(filter_buffer), input_buffer, input_buffer_size));
  simElements.push_back(new OutputMonitor(top, output_buffer, output_buffer_size, channels));

  vluint64_t sim_time = 0;
  resetDut(top, simElements, &sim_time, m_trace);

  // Our state
  bool done = false;
  bool show_demo_window = false;
  bool running = false;
  bool do_reset = false;
  int step_n_cycles = 0;
  int filter_input[3] = {0, 0, 0};
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
      if (event.type == SDL_WINDOWEVENT && event.window.event == SDL_WINDOWEVENT_CLOSE &&
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
      running ^= ImGui::Button(running ? "Stop" : "Start");
      do_reset = ImGui::Button("Reset");

      if (running || ImGui::Button("Step")) {
        step_n_cycles = cycles_per_iteration;
      }      

      ImGui::Text("Input frame buffer %d x %d (tex id=%p)", input_width, input_height, (void *) (intptr_t) input_texture_id);
      ImVec2 pos = ImGui::GetCursorScreenPos();
      ImGui::Image((void *) (intptr_t) input_texture_id, ImVec2(input_width, input_height));
      ImVec4 tint_col = ImVec4(1.0f, 1.0f, 1.0f, 1.0f);    // No tint
      ImVec4 border_col = ImVec4(1.0f, 1.0f, 1.0f, 0.5f);  // 50% opaque white
      if (ImGui::IsItemHovered()) {
        ImGui::BeginTooltip();
        float region_sz = 8.0f;
        int px_x = io.MousePos.x - pos.x;
        int px_y = io.MousePos.y - pos.y;
        float region_x = px_x - region_sz * 0.5f;
        float region_y = px_y - region_sz * 0.5f;
        float zoom = 4.0f;
        if (region_x < 0.0f) {
          region_x = 0.0f;
        } else if (region_x > input_width - region_sz) {
          region_x = input_width - region_sz;
        }
        if (region_y < 0.0f) {
          region_y = 0.0f;
        } else if (region_y > input_height - region_sz) {
          region_y = input_height - region_sz;
        }

        auto px_idx = (px_y * input_width + px_x) * channels;
        assert(px_idx > 0 && px_idx < input_buffer_size);
        auto px = input_buffer + px_idx;
        uint8_t px_r = px[0];
        uint8_t px_g = px[1];
        uint8_t px_b = px[2];
        //ImGui::Text("Px pos: (%d, %d)", px_x, px_y);
        ImGui::Text("Px rgb: (%d, %d, %d)", px_r, px_g, px_b);

        ImVec2 uv0 = ImVec2((region_x) / input_width, (region_y) / input_height);
        ImVec2 uv1 =
            ImVec2((region_x + region_sz) / input_width, (region_y + region_sz) / input_height);
        ImGui::Image((void *) (intptr_t) input_texture_id,
                     ImVec2(region_sz * zoom, region_sz * zoom), uv0, uv1, tint_col, border_col);
        ImGui::EndTooltip();
      }

      if (ImGui::InputInt3("RGB filter", filter_input)) {
        filter_input[0] = std::max(0, std::min(255, filter_input[0]));
        filter_input[1] = std::max(0, std::min(255, filter_input[1]));
        filter_input[2] = std::max(0, std::min(255, filter_input[2]));
        filter_buffer[0] = (uint8_t) filter_input[0];
        filter_buffer[1] = (uint8_t) filter_input[1];
        filter_buffer[2] = (uint8_t) filter_input[2];
      }

      ImGui::Text("Output frame buffer %d x %d (tex id=%p)", output_width, output_height, (void *) (intptr_t) output_texture_id);
      ImGui::Image((void *) (intptr_t) output_texture_id, ImVec2(output_width, output_height));

      ImGui::Text("Top level state");
      ImGui::Text("[OUT] top->io_pixel_in_addr=%d", top->io_pixel_in_addr);
      ImGui::Text("[OUT] top->io_pixel_out_payload_r=%d", top->io_pixel_out_payload_r);
      ImGui::Text("[OUT] top->io_pixel_out_payload_g=%d", top->io_pixel_out_payload_g);
      ImGui::Text("[OUT] top->io_pixel_out_payload_b=%d", top->io_pixel_out_payload_b);
      ImGui::Text("[OUT] top->io_pixel_out_addr=%d", top->io_pixel_out_addr);

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

    update_texture(output_texture_id, GL_RGBA, output_width, output_height, output_buffer);

    // Rendering
    ImGui::Render();
    glViewport(0, 0, (int) io.DisplaySize.x, (int) io.DisplaySize.y);
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

  deinitDut(&top, m_trace);

  return 0;
}
