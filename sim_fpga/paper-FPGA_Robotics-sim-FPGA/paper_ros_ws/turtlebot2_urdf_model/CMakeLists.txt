cmake_minimum_required(VERSION 2.8.3)
project(turtlebot2_urdf_model)
find_package(catkin REQUIRED COMPONENTS urdf)

catkin_package(
   CATKIN_DEPENDS urdf
)

install(DIRECTORY launch
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
install(DIRECTORY meshes
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
install(DIRECTORY rviz
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
install(DIRECTORY urdf
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
