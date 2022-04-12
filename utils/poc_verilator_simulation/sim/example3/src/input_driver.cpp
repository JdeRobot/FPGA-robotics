#include "input_driver.h"

#include <opencv2/imgcodecs.hpp>
#include <opencv2/imgproc.hpp>

#include "Vdesign_top.h"
#include "gl_texture_utils.h"
#include "imgui.h"

typedef cv::Vec<uint8_t, 3> BGRPixel;

namespace sim {

InputDriver::InputDriver(Vdesign_top *top, const std::vector<std::string> &input_image_paths,
                         int width, int height)
    : top{top}, wRgbfilter{0}, input_image_idx{0}, input_addr{0} {
    for (const auto &path : input_image_paths) {
        const cv::Mat input_image = cv::imread(path);
        cv::Mat input_image_resized;

        cv::resize(input_image, input_image_resized, cv::Size(width, height), 0, 0, cv::INTER_AREA);
        this->input_images.push_back(input_image_resized);
    }
}

InputDriver::~InputDriver() {}

void InputDriver::onReset() { this->input_addr = 0; }

void InputDriver::preCycle() {}

void InputDriver::postCycle() {
    auto &px = getCurrentImage().at<BGRPixel>(this->input_addr);

    this->top->addrin = this->input_addr;
    this->top->wea = 1;

    uint8_t b = (px[0] >> 4) & 0xF;
    uint8_t g = (px[1] >> 4) & 0xF;
    uint8_t r = (px[2] >> 4) & 0xF;
    this->top->datain = (r << 8) | (g << 4) | b;

    this->top->wRgbfilter = this->wRgbfilter;

    this->input_addr++;
    if (this->input_addr >= getCurrentImage().rows * getCurrentImage().cols) {
        this->input_addr = 0;
    }
}

void InputDriver::onGUIInit() {
    for (auto &i : this->input_images) {
        this->input_texture_ids.push_back(utils::create_texture(GL_BGR, i));
    }
}

void InputDriver::onGUIUpdate(bool *p_open) {
    if (!ImGui::Begin("InputDriver", p_open, ImGuiWindowFlags_AlwaysAutoResize)) {
        ImGui::End();
        return;
    }

    ImGui::Text("Input frame buffer %d x %d", getCurrentImage().cols, getCurrentImage().rows);

    size_t idx = 0;
    const size_t last_idx = this->input_images.size() - 1;
    for (auto &i : this->input_images) {
        if (ImGui::ImageButton(
                (void *)(intptr_t)this->input_texture_ids[idx],
                ImVec2(this->input_images[idx].cols, this->input_images[idx].rows))) {
            input_image_idx = idx;
        }
        if (idx != last_idx) {
            ImGui::SameLine();
        }
        idx++;
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
        this->wRgbfilter = (((uint8_t)blue_filter_check) << 2) |
                           (((uint8_t)green_filter_check) << 1) | (uint8_t)red_filter_check;
    }

    ImGui::End();
}

const cv::Mat InputDriver::getCurrentImage() const {
    return this->input_images[this->input_image_idx];
}

}  // namespace sim