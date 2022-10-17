#include "output_monitor.h"

#include "Vdesign_top.h"
#include "gl_texture_utils.h"
#include "imgui.h"

#define LED_ICON "\uf111"

const uint8_t ALPHA_SOLID = 255;
typedef cv::Vec<uint8_t, 4> BGRAPixel;

namespace sim {

OutputMonitor::OutputMonitor(Vdesign_top *top, int width, int height, int nleds)
    : top{top}, output_image(height, width, CV_8UC4), output_addr{0}, nleds{nleds} {}

OutputMonitor::~OutputMonitor() {}

void OutputMonitor::onReset() { this->output_addr = 0; }

void OutputMonitor::preCycle() { this->top->addrout = this->output_addr; }

void OutputMonitor::postCycle() {
    auto &px = this->output_image.at<BGRAPixel>(this->output_addr);

    px[0] = (top->dataout & 0xF) << 4;         // b
    px[1] = ((top->dataout >> 4) & 0xF) << 4;  // g
    px[2] = ((top->dataout >> 8) & 0xF) << 4;  // r
    px[3] = ALPHA_SOLID;                       // alpha

    this->output_addr++;
    if (this->output_addr >= (this->output_image.rows * this->output_image.cols)) {
        this->output_addr = 0;
    }
}

void OutputMonitor::onGUIInit() {
    this->output_texture_id = utils::create_texture(GL_BGRA, output_image);
}

void OutputMonitor::onGUIUpdate(bool *p_open) {
    if (!ImGui::Begin("OutputMonitor", p_open, ImGuiWindowFlags_AlwaysAutoResize)) {
        ImGui::End();
        return;
    }

    utils::update_texture(output_texture_id, GL_BGRA, output_image);

    ImGui::Text("Output frame buffer %d x %d", this->output_image.cols, this->output_image.rows);
    ImGui::Image((void *)(intptr_t)this->output_texture_id,
                 ImVec2(this->output_image.cols, this->output_image.rows));

    ImGui::Text("Top level state");
    ImGui::Text("[Leds]");
    ImGui::SameLine();
    for (int i = this->nleds; i > 0; i--) {
        int led_n = i - 1;
        bool led_on = top->leds & (1 << led_n);
        auto gb = led_on ? 0 : 255;
        ImGui::TextColored(ImVec4(255, gb, gb, ALPHA_SOLID), LED_ICON);
        if (led_n > 0) {
            ImGui::SameLine();
        }
    }

    ImGui::End();
}

}  // namespace sim