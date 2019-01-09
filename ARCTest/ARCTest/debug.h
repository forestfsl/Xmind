//
//  debug.hpp
//  ARCTest
//
//  Created by admin on 2018/12/29.
//  Copyright © 2018 admin. All rights reserved.
//
#import <Foundation/Foundation.h>

#ifndef debug_hpp
#define debug_hpp

#include <stdio.h>

# if __arm64__
#   define ISA_MASK        0x0000000ffffffff8ULL
# elif __x86_64__
#   define ISA_MASK        0x00007ffffffffff8ULL
# endif

#if __LP64__
typedef uint32_t mask_t;
#else
typedef uint16_t mask_t;
#endif
typedef uintptr_t cache_key_t;

struct bucket_t {
    cache_key_t _key;
    IMP _imp;
};

struct cache_t {
    struct bucket_t *_buckets;
    mask_t _mask;
    mask_t _occupied;
};

struct entsize_list_tt {
    uint32_t entsizeAndFlags;
    uint32_t count;
};

struct method_t {
    SEL name;
    const char *types;
    IMP imp;
};



struct method_list_t : entsize_list_tt {
    method_t first;
};

#endif /* debug_hpp */
