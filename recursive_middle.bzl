load("@BazelRecursiveBottom//:recursive_bottom.bzl", "recursive_bottom_helloworld")

def recursive_middle_helloworld(name, **kwargs):
  # invoke our bottom workspace rule
  recursive_bottom_helloworld(name+"_down", **kwargs)

  native.genrule(
    name = name,
    srcs = ["@BazelRecursiveMiddle//:recursive_middle_rule.sh"],
    outs = ["recursive_middle_out.txt"],
    cmd = "./$(location @BazelRecursiveMiddle//:recursive_middle_rule.sh) $@",
    tools = ["@BazelRecursiveMiddle//:recursive_middle_rule.sh"],
    **kwargs
  )
