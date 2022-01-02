load("@rules_cc//cc:defs.bzl", "cc_library")
load("//c10/macros:cmake_configure_file.bzl", "cmake_configure_file")

rules = struct(
    cc_library = cc_library,
    cmake_configure_file = cmake_configure_file,
    select = select,
)
