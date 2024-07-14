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

#include "dut_handler.h"
#include "imgui.h"
#include "imgui_impl_opengl3.h"
#include "imgui_impl_sdl2.h"
#include "input_driver.h"
#include "output_monitor.h"
#include "sim_element.h"

// verilator headers
#include "Vdesign_top.h"
#include "verilated.h"
#include "verilated_vcd_c.h"

#define START_ICON "\uf04b"
#define STOP_ICON "\uf04d"
#define STEP_ICON "\uf051"
#define RESET_ICON "\uf0e2"

const int n_leds = 8;
const int width = 80;
const int height = 60;

const std::vector<std::string> input_image_paths{ASSETS_DIR "/red_ball_left_80x60.png",
                                                 ASSETS_DIR "/red_ball_center_80x60.png",
                                                 ASSETS_DIR "/red_ball_right_80x60.png"};

const char font_awesome_path[] = ASSETS_DIR "/fa-solid-900.ttf";

void drawSimElements(const std::vector<sim::SimElementWithGUI *> &simElementsGUI, std::vector<uint8_t> &showSimElements) {
    size_t simElementIdx = 0;
    for (auto simElement : simElementsGUI) {
        if (showSimElements[simElementIdx]) {
            simElement->onGUIUpdate((bool *)&showSimElements[simElementIdx]);
        }
        simElementIdx++;
    }
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
        (SDL_WindowFlags)(SDL_WINDOW_OPENGL | SDL_WINDOW_RESIZABLE | SDL_WINDOW_ALLOW_HIGHDPI);
    SDL_Window *window = SDL_CreateWindow("Pixel Processor simulator", SDL_WINDOWPOS_CENTERED,
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

    static const ImWchar icons_ranges[] = {0xe005, 0xf8ff,
                                           0};  // Will not be copied by AddFont* so keep in scope.
    ImFontConfig icons_config;
    icons_config.MergeMode = true;
    icons_config.PixelSnapH = true;
    io.Fonts->AddFontFromFileTTF(font_awesome_path, 14.0f, &icons_config,
                                 icons_ranges);  // Merge into first font
    io.Fonts->Build();

    // Setup Dear ImGui style
    ImGui::StyleColorsDark();
    // ImGui::StyleColorsClassic();

    // Setup Platform/Renderer backends
    ImGui_ImplSDL2_InitForOpenGL(window, gl_context);
    ImGui_ImplOpenGL3_Init(glsl_version);

    // init dut, tracing and sim elements
    sim::DutHandler<Vdesign_top> dutHandler(argc, argv);

    std::vector<sim::SimElementWithGUI *> simElementsGUI{
        new sim::InputDriver(dutHandler.get_dut(), input_image_paths, width, height),
        new sim::OutputMonitor(dutHandler.get_dut(), width, height, n_leds)};
    std::vector<sim::SimElement *> simElements(simElementsGUI.begin(), simElementsGUI.end());
    std::vector<uint8_t> showSimElements(simElementsGUI.size(), 1);

    // Our state
    bool done = false;
    //bool show_demo_window = false;
    bool running = false;
    bool do_reset = false;
    int step_n_cycles = 0;
    int cycles_per_iteration = 5;

    dutHandler.reset(simElements);
    for (auto simElement : simElementsGUI) {
        simElement->onGUIInit();
    }

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
        // if (show_demo_window) ImGui::ShowDemoWindow(&show_demo_window);

        // main window
        {
            ImGui::Begin("Main");
            // ImGui::Checkbox("Demo Window", &show_demo_window);
            ImGui::Checkbox("InputDriver Window", (bool *)&showSimElements[0]);
            ImGui::Checkbox("OutputMonitor Window", (bool *)&showSimElements[1]);

            ImGui::InputInt("Cycles per iteration", &cycles_per_iteration);
            running ^= ImGui::Button(running ? STOP_ICON " Stop" : START_ICON " Start");
            ImGui::SameLine();
            do_reset = ImGui::Button(RESET_ICON " Reset");

            if (running || ImGui::Button(STEP_ICON " Step")) {
                step_n_cycles = cycles_per_iteration;
            }

            drawSimElements(simElementsGUI, showSimElements);

            ImGui::Text("Application average %.3f ms/frame (%.1f FPS)",
                        1000.0f / ImGui::GetIO().Framerate, ImGui::GetIO().Framerate);
            ImGui::End();
        }

        // dut eval
        if (do_reset) dutHandler.reset(simElements);

        while (!Verilated::gotFinish() && step_n_cycles > 0) {
            step_n_cycles--;
            dutHandler.tick(simElements);
        }

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

    for (auto e : simElementsGUI) delete e;

    return 0;
}
