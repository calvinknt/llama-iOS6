# force-cpp-flags.cmake

function(fix_target_compile_features target)
    get_target_property(target_type ${target} TYPE)
    if(target_type STREQUAL "EXECUTABLE" OR target_type STREQUAL "STATIC_LIBRARY" OR target_type STREQUAL "SHARED_LIBRARY")
        message(STATUS "Manually setting C++ flags for target: ${target}")
        target_compile_options(${target} PRIVATE -std=c++11)
    endif()
endfunction()

# Intercept all targets globally
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED OFF)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_COMPILE_FEATURES "") # clear CMake's idea of features

