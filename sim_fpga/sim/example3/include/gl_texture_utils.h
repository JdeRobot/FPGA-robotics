#pragma once
#include <SDL_opengl.h>

#include <opencv2/core.hpp>

namespace utils {

GLuint create_texture(GLenum format, const cv::Mat &texture);

bool update_texture(GLuint texture_id, GLenum format, const cv::Mat &texture);

}  // namespace utils
