VERSION = "1.0.0"
config = import("micro/config")

function init()
    config.AddRuntimeFile("prec", config.RTSyntax, "prec.yaml")
    linter.makeLinter("precc", "prec", "precc", {"-fsyntax-only", "%f"}, "%f:%l:%c:.+: %m")
end
