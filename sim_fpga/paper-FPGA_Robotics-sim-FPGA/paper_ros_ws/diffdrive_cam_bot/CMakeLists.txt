cmake_minimum_required(VERSION 2.8.3)
project(diffdrive_cam_bot)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS)

find_package(gazebo REQUIRED)

catkin_package()

include_directories(${GAZEBO_INCLUDE_DIRS})

add_library(personplugin plugins/person.cc)

target_link_libraries(personplugin ${catkin_LIBRARIES} ${GAZEBO_LIBRARIES})

install(TARGETS personplugin
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
)

install(DIRECTORY
  models
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

install(DIRECTORY launch
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)




