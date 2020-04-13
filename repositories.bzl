load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def load_bazel_recursive_middle_repos():
  http_archive(
      name = "BazelRecursiveBottom",
      sha256 = "58c5448c4abbcf3ae1af941a87ff033e00f6129a636b2ca48f60844b01bc0ab5",
      urls = [
          "https://github.com/plaird/BazelRecursiveBottom/releases/download/1.0.0/BazelRecursiveBottom-1.0.0.zip",
      ],
  )
