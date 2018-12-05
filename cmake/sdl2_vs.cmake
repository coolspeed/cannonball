# CMake setup used for SDL2 Builds.

set(lib_base D:/lib)
set(sdl_root ${lib_base}/SDL2-2.0.9)

include_directories("${sdl_root}")

link_libraries(cannonball 
    SDL2
)

# Linking
link_directories(
    "${sdl_root}/lib/x64"
)

add_definitions(-O3 -DSDL2)
 
# Location for Cannonball to create save files
# Used to auto-generate setup.hpp with various file paths
set(xml_directory ./)
set(sdl_flags "SDL_WINDOW_RESIZABLE")

# Set SDL2 instead of SDL1
set(SDL2 1)
