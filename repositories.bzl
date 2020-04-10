load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

def load_bazel_downstream_repos():
  git_repository(
     name = "BazelDownstreamLeaf",
     branch = "master",
     remote = "https://github.com/plaird/BazelDownstreamLeaf",
  )
  
