def define_targets(rules):
    rules.cc_library(
        name = "CPUCachingAllocator",
        srcs = ["CPUCachingAllocator.cpp"],
        hdrs = ["CPUCachingAllocator.h"],
        visibility = ["//visibility:public"],
        deps = [
            "//c10/core:alloc_cpu",
            "//c10/util:base",
        ],
    )

    rules.cc_library(
        name = "CPUProfilingAllocator",
        srcs = ["CPUProfilingAllocator.cpp"],
        hdrs = ["CPUProfilingAllocator.h"],
        visibility = ["//visibility:public"],
        deps = [
            "//c10/core:alloc_cpu",
            "//c10/util:base",
        ],
    )

    rules.filegroup(
        name = "headers",
        srcs = rules.glob(["*.h"]),
        visibility = ["//c10:__pkg__"],
    )
