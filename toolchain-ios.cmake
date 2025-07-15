# Target platform is iOS
set(CMAKE_SYSTEM_NAME Darwin)
set(CMAKE_SYSTEM_PROCESSOR armv7s)
set(CMAKE_OSX_ARCHITECTURES armv7s)

# iOS SDK path
set(CMAKE_OSX_SYSROOT "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS6.1.sdk")

# Minimum iOS version
set(CMAKE_OSX_DEPLOYMENT_TARGET "6.0")

# Compiler
set(CMAKE_C_COMPILER /usr/bin/clang)
set(CMAKE_CXX_COMPILER /usr/bin/clang++)

# Ensure correct flags
set(CMAKE_C_FLAGS "-arch armv7s -mfpu=neon -mfloat-abi=hard -isysroot ${CMAKE_OSX_SYSROOT} -miphoneos-version-min=${CMAKE_OSX_DEPLOYMENT_TARGET}" CACHE STRING "" FORCE)
set(CMAKE_CXX_FLAGS "-arch armv7s -mfpu=neon -mfloat-abi=hard -isysroot ${CMAKE_OSX_SYSROOT} -miphoneos-version-min=${CMAKE_OSX_DEPLOYMENT_TARGET}" CACHE STRING "" FORCE)

# Use static libraries
set(CMAKE_FIND_LIBRARY_SUFFIXES ".a")
set(CMAKE_EXE_LINKER_FLAGS "-arch armv7s -isysroot ${CMAKE_OSX_SYSROOT} -miphoneos-version-min=${CMAKE_OSX_DEPLOYMENT_TARGET}" CACHE STRING "" FORCE)

# Prevent CMake from testing for x86_64 binaries
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)
set(CMAKE_SYSTEM_NAME Darwin)
set(CMAKE_OSX_ARCHITECTURES armv7s)
set(CMAKE_OSX_SYSROOT "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS6.1.sdk")
set(CMAKE_OSX_DEVELOPMENT_TARGET "6.0")
set(CMAKE_C_COMPILER /usr/bin/clang)
set(CMAKE_C_FLAGS "-arch armv7s -mfpu=neon -mfloat-abi=hard -Os")

# Force C++11 globally to override CXX17 requirements
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Override feature-based selection
set(CMAKE_CXX_COMPILE_FEATURES "cxx_auto_type;cxx_lambdas")

