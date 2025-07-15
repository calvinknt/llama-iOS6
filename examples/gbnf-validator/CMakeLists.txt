set(TARGET llama-gbnf-validator)
add_executable(${TARGET} gbnf-validator.cpp)
install(TARGETS ${TARGET} RUNTIME)
target_link_libraries(${TARGET} PRIVATE common llama ${CMAKE_THREAD_LIBS_INIT})
