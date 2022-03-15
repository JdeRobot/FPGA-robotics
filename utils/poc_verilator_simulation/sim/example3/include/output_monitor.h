#pragma once
#include <SDL_opengl.h>

#include <opencv2/core.hpp>

#include "sim_element.h"

class Vdesign_top;

namespace sim {

class OutputMonitor : public SimElementWithGUI {
   public:
    OutputMonitor(Vdesign_top *top, int width, int height, int nleds);
    virtual ~OutputMonitor();
    virtual void onReset();
    virtual void preCycle();
    virtual void postCycle();
    virtual void onGUIInit();
    virtual void onGUIUpdate(bool *p_open);

   private:
    Vdesign_top *const top;
    cv::Mat output_image;
    GLuint output_texture_id;
    size_t output_addr;
    const int nleds;
};

}  // namespace sim