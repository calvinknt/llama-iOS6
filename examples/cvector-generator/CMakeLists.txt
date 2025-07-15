set(TARGET llama-cvector-generator)
add_executable(${TARGET} cvector-generator.cpp pca.hpp)
install(TARGETS ${TARGET} RUNTIME)
target_link_libraries(${TARGET} PRIVATE common llama ${CMAKE_THREAD_LIBS_INIT})
