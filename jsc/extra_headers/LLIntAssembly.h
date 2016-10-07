// Copyright 2004-present Facebook. All Rights Reserved.

#if defined(__ANDROID__) && defined(__ARM_ARCH_7A__)
#include "LLIntAssembly.android-armv7.h"
#elif defined(__ANDROID__) && defined(__i386__)
#include "LLIntAssembly.android-x86.h"
#elif defined(__ANDROID__) && defined(__x86_64__)
#include "LLIntAssembly.android-x86_64.h"
#elif defined(__ANDROID__) && defined(__aarch64__)
#include "LLIntAssembly.android-arm64.h"
#else
#error "Platform not supported"
#endif
