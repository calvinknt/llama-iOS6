set(TARGET llama-tts)
add_executable(${TARGET} tts.cpp)
install(TARGETS ${TARGET} RUNTIME)
target_link_libraries(${TARGET} PRIVATE llama common ${CMAKE_THREAD_LIBS_INIT})
