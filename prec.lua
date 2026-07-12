VERSION = "1.0.0"
config = import("micro/config")

function preinit()
    config.AddRuntimeFile("prec", config.RTSyntax, "prec.yaml")
    if linter ~= nil then
        linter.makeLinter("precc", "prec", "precc", {"-fsyntax-only", "%f"}, "%f:%l:%c:.+: %m")
    end
end
