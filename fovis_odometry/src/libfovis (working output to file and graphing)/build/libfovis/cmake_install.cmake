# Install script for directory: /home/twhyte/cobot/robocpp/src/libfovis/libfovis

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/twhyte/cobot/robocpp/src/libfovis/build/lib/pkgconfig/libfovis.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfovis.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfovis.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "/usr/local/lib")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/twhyte/cobot/robocpp/src/libfovis/build/lib/libfovis.so.1"
    "/home/twhyte/cobot/robocpp/src/libfovis/build/lib/libfovis.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfovis.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfovis.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "::::::::::::::"
           NEW_RPATH "/usr/local/lib")
      IF(CMAKE_INSTALL_DO_STRIP)
        EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "${file}")
      ENDIF(CMAKE_INSTALL_DO_STRIP)
    ENDIF()
  ENDFOREACH()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/fovis" TYPE FILE FILES
    "/home/twhyte/cobot/robocpp/src/libfovis/libfovis/fovis.hpp"
    "/home/twhyte/cobot/robocpp/src/libfovis/libfovis/visual_odometry.hpp"
    "/home/twhyte/cobot/robocpp/src/libfovis/libfovis/motion_estimation.hpp"
    "/home/twhyte/cobot/robocpp/src/libfovis/libfovis/frame.hpp"
    "/home/twhyte/cobot/robocpp/src/libfovis/libfovis/keypoint.hpp"
    "/home/twhyte/cobot/robocpp/src/libfovis/libfovis/depth_source.hpp"
    "/home/twhyte/cobot/robocpp/src/libfovis/libfovis/camera_intrinsics.hpp"
    "/home/twhyte/cobot/robocpp/src/libfovis/libfovis/primesense_depth.hpp"
    "/home/twhyte/cobot/robocpp/src/libfovis/libfovis/grid_filter.hpp"
    "/home/twhyte/cobot/robocpp/src/libfovis/libfovis/sad.hpp"
    "/home/twhyte/cobot/robocpp/src/libfovis/libfovis/internal_utils.hpp"
    "/home/twhyte/cobot/robocpp/src/libfovis/libfovis/intensity_descriptor.hpp"
    "/home/twhyte/cobot/robocpp/src/libfovis/libfovis/pyramid_level.hpp"
    "/home/twhyte/cobot/robocpp/src/libfovis/libfovis/feature_match.hpp"
    "/home/twhyte/cobot/robocpp/src/libfovis/libfovis/feature_matcher.hpp"
    "/home/twhyte/cobot/robocpp/src/libfovis/libfovis/refine_feature_match.hpp"
    "/home/twhyte/cobot/robocpp/src/libfovis/libfovis/stereo_depth.hpp"
    "/home/twhyte/cobot/robocpp/src/libfovis/libfovis/stereo_frame.hpp"
    "/home/twhyte/cobot/robocpp/src/libfovis/libfovis/depth_image.hpp"
    "/home/twhyte/cobot/robocpp/src/libfovis/libfovis/rectification.hpp"
    "/home/twhyte/cobot/robocpp/src/libfovis/libfovis/stereo_rectify.hpp"
    "/home/twhyte/cobot/robocpp/src/libfovis/libfovis/options.hpp"
    "/home/twhyte/cobot/robocpp/src/libfovis/libfovis/tictoc.hpp"
    "/home/twhyte/cobot/robocpp/src/libfovis/libfovis/refine_motion_estimate.hpp"
    "/home/twhyte/cobot/robocpp/src/libfovis/libfovis/initial_homography_estimation.hpp"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

