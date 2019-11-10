cmake_minimum_required(VERSION 3.16 FATAL_ERROR)
project(console VERSION 1.0.0 LANGUAGES CXX)

set(CMAKE_CXX_FLAGS "/nologo /std:c++latest /permissive- /wd28251")
set(CMAKE_CXX_FLAGS_RELEASE "/O1 /Oi- /GA /GF /GS- /Gs40960 /DNDEBUG")

set(CMAKE_EXE_LINKER_FLAGS "/nologo /NODEFAULTLIB")
set(CMAKE_EXE_LINKER_FLAGS_RELEASE "/DEBUG:NONE /OPT:REF /OPT:ICF")

set(CMAKE_RC_FLAGS "/nologo")
set(CMAKE_MSVC_RUNTIME_LIBRARY "")
set(SILENCE_VS_WARNINGS ${CMAKE_C_COMPILER})

add_executable(console WIN32 console.cpp console.manifest)
target_compile_definitions(console PRIVATE _WINDOWS _WIN32 _WIN32_WINNT=0x0A00 WINVER=0x0A00)
target_compile_definitions(console PRIVATE _UNICODE UNICODE WIN32_LEAN_AND_MEAN NOMINMAX)
target_link_options(console PRIVATE /ENTRY:main)

install(TARGETS console RUNTIME DESTINATION ${CMAKE_CURRENT_SOURCE_DIR}/../bin)
