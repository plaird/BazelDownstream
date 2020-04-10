def downstream_helloworld(name, **kwargs):
  native.genrule(
    name = name,
    srcs = ["@BazelDownstream//:downstream_rule.sh"],
    outs = ["downstream_out.txt"],
    cmd = "./$(location @BazelDownstream//:downstream_rule.sh) $@",
    tools = ["@BazelDownstream//:downstream_rule.sh"],
    **kwargs
  )
