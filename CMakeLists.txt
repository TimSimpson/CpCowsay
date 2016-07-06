project(Nnd32 CXX)
cmake_minimum_required(VERSION 2.8)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

include_directories(
    src
    target
    ${CONAN_INCLUDE_DIRS})


if (MSVC)
    set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} /MDd")
endif()

add_executable(cowsay src/cowsay.cpp)
target_link_libraries(cowsay ${CONAN_LIBS})
