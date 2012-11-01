# Install script for directory: /home/twhyte/projects/libfovis/libfovis

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/twhyte/projects/libfovis/build")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/twhyte/projects/libfovis/pod-build/lib/pkgconfig/libfovis.pc")
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
           RPATH "/home/twhyte/projects/libfovis/build/lib")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/twhyte/projects/libfovis/pod-build/lib/libfovis.so.1"
    "/home/twhyte/projects/libfovis/pod-build/lib/libfovis.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfovis.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libfovis.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "::::::::::::::::::::::::::::::::::::::::"
           NEW_RPATH "/home/twhyte/projects/libfovis/build/lib")
      IF(CMAKE_INSTALL_DO_STRIP)
        EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "${file}")
      ENDIF(CMAKE_INSTALL_DO_STRIP)
    ENDIF()
  ENDFOREACH()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/fovis" TYPE FILE FILES
    "/home/twhyte/projects/libfovis/libfovis/fovis.hpp"
    "/home/twhyte/projects/libfovis/libfovis/visual_odometry.hpp"
    "/home/twhyte/projects/libfovis/libfovis/motion_estimation.hpp"
    "/home/twhyte/projects/libfovis/libfovis/frame.hpp"
    "/home/twhyte/projects/libfovis/libfovis/keypoint.hpp"
    "/home/twhyte/projects/libfovis/libfovis/depth_source.hpp"
    "/home/twhyte/projects/libfovis/libfovis/camera_intrinsics.hpp"
    "/home/twhyte/projects/libfovis/libfovis/primesense_depth.hpp"
    "/home/twhyte/projects/libfovis/libfovis/grid_filter.hpp"
    "/home/twhyte/projects/libfovis/libfovis/sad.hpp"
    "/home/twhyte/projects/libfovis/libfovis/internal_utils.hpp"
    "/home/twhyte/projects/libfovis/libfovis/intensity_descriptor.hpp"
    "/home/twhyte/projects/libfovis/libfovis/pyramid_level.hpp"
    "/home/twhyte/projects/libfovis/libfovis/feature_match.hpp"
    "/home/twhyte/projects/libfovis/libfovis/feature_matcher.hpp"
    "/home/twhyte/projects/libfovis/libfovis/refine_feature_match.hpp"
    "/home/twhyte/projects/libfovis/libfovis/stereo_depth.hpp"
    "/home/twhyte/projects/libfovis/libfovis/stereo_frame.hpp"
    "/home/twhyte/projects/libfovis/libfovis/depth_image.hpp"
    "/home/twhyte/projects/libfovis/libfovis/rectification.hpp"
    "/home/twhyte/projects/libfovis/libfovis/stereo_rectify.hpp"
    "/home/twhyte/projects/libfovis/libfovis/options.hpp"
    "/home/twhyte/projects/libfovis/libfovis/tictoc.hpp"
    "/home/twhyte/projects/libfovis/libfovis/refine_motion_estimate.hpp"
    "/home/twhyte/projects/libfovis/libfovis/initial_homography_estimation.hpp"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

