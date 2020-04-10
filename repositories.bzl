load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

def load_bazel_recursive_middle_repos():
  git_repository(
     name = "BazelRecursiveBottom",
     branch = "master",
     remote = "https://github.com/plaird/BazelRecursiveBottom",
  )
