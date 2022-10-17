#pragma once
#include <SDL_opengl.h>

#include <opencv2/core.hpp>

#include "sim_element.h"

class Vdesign_top;

namespace sim {

class InputDriver : public SimElementWithGUI {
   public:
    InputDriver(Vdesign_top *top, const std::vector<std::string> &input_image_paths, int width,
                int height);
    virtual ~InputDriver();
    virtual void onReset();
    virtual void preCycle();
    virtual void postCycle();
    virtual void onGUIInit();
    virtual void onGUIUpdate(bool *p_open);

   private:
    const cv::Mat getCurrentImage() const;
    Vdesign_top *const top;
    std::vector<cv::Mat> input_images;
    std::vector<GLuint> input_texture_ids;
    uint8_t wRgbfilter;
    size_t input_image_idx;
    size_t input_addr;
};

}  // namespace sim