using Documenter, PyCMA

makedocs(
    modules = [PyCMA],
    format = Documenter.HTML(; prettyurls = get(ENV, "CI", nothing) == "true"),
    authors = "Johanni Brea",
    sitename = "PyCMA.jl",
    pages = Any["index.md"]
    # strict = true,
    # clean = true,
    # checkdocs = :exports,
)

deploydocs(
    repo = "github.com/jbrea/PyCMA.jl.git",
    push_preview = true
)
