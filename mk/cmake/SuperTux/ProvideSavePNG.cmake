if(EMSCRIPTEN)
  set(CMAKE_LINKER_FLAGS "${CMAKE_LINKER_FLAGS} -sUSE_LIBPNG=1")
  set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -sUSE_LIBPNG=1")
else()
  find_package(PNG REQUIRED)
endif()

file(GLOB SAVEPNG_SOURCES_CXX RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} external/SDL_SavePNG/savepng.c)
add_library(LibSavePNG STATIC ${SAVEPNG_SOURCES_CXX})
target_include_directories(LibSavePNG SYSTEM PUBLIC
  ${SDL2_INCLUDE_DIRS}
  ${PNG_INCLUDE_DIRS}
  external/SDL_SavePNG)
target_link_libraries(LibSavePNG PUBLIC ${PNG_LIBRARIES})

# EOF #
