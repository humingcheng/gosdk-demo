# gazelle:exclude go
load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library")

load(
    "//bazel:pgv_proto_library.bzl",
    "pgv_go_proto_library",
    "pgv_cc_proto_library",
)

pgv_go_proto_library(
    name = "go",
    srcs = [
        "embed.proto",
    ],
    importpath = "github.com/lyft/protoc-gen-validate/tests/harness/cases/other_package/go",
    rules_go_repo_only_for_internal_use = "",
)

go_library(
    name = "gogo",
    srcs = glob(["gogo/*.go"]),
    visibility = ["//visibility:public"],
    importpath = "github.com/lyft/protoc-gen-validate/tests/harness/cases/other_package/gogo",
    deps = [
        "//tests/harness/gogo:go_default_library",
        "//validate:go_default_library",
        "//vendor/github.com/gogo/protobuf/proto:go_default_library",
        "//vendor/github.com/gogo/protobuf/types:go_default_library",
    ],
)

pgv_cc_proto_library(
    name = "cc",
    srcs = [
        "embed.proto",
    ],
    visibility = ["//tests:__subpackages__"],
)
