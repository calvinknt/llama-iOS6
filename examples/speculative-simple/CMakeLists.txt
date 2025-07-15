set(TARGET llama-speculative-simple)
add_executable(${TARGET} speculative-simple.cpp)
install(TARGETS ${TARGET} RUNTIME)
target_link_libraries(${TARGET} PRIVATE common llama ${CMAKE_THREAD_LIBS_INIT})
