set(TARGET llama-gen-docs)
add_executable(${TARGET} gen-docs.cpp)
install(TARGETS ${TARGET} RUNTIME)
target_link_libraries(${TARGET} PRIVATE common llama ${CMAKE_THREAD_LIBS_INIT})
