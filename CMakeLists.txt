project(HawaiiWallpapers)

cmake_minimum_required(VERSION 2.8.7)

# Version
set(WALLPAPERS_VERSION_MAJOR 0)
set(WALLPAPERS_VERSION_MINOR 1)
set(WALLPAPERS_VERSION_PATCH 0)
set(WALLPAPERS_VERSION_STRING "${WALLPAPERS_VERSION_MAJOR}.${WALLPAPERS_VERSION_MINOR}.${WALLPAPERS_VERSION_PATCH}")

# Installation directories
include(HawaiiInstallDirs)

# Add custom uninstall target
configure_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/cmake_uninstall.cmake.in"
    "${CMAKE_CURRENT_BINARY_DIR}/cmake_uninstall.cmake"
    IMMEDIATE @ONLY)

add_custom_target(uninstall "${CMAKE_COMMAND}" -P "${CMAKE_CURRENT_BINARY_DIR}/cmake_uninstall.cmake")

# Set up packaging
set(CPACK_PACKAGE_NAME hawaii-wallpapers)
set(CPACK_PACKAGE_VERSION ${WALLPAPERS_VERSION_STRING})
set(CPACK_SYSTEM_NAME "generic")
set(CPACK_GENERATOR "TGZ")
set(CPACK_SET_DESTDIR FALSE)
include(CPack)

# Subdirectories
add_subdirectory(wallpapers)
