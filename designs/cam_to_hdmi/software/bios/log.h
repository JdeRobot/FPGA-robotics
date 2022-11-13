#pragma once
#include <stdio.h>

// https://stackoverflow.com/a/1644898

#define debug_print(fmt, ...)                                                               \
    do {                                                                                    \
        if (DEBUG) printf("%s:%d:%s(): " fmt, __FILE__, __LINE__, __func__, ##__VA_ARGS__); \
    } while (0)
