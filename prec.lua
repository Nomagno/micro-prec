VERSION = "1.0.0"

function init()
    linter.makeLinter("precc", "prec", "precc", {"-fsyntax-only", "%f"}, "%f:%l:%c:.+: %m")
end
