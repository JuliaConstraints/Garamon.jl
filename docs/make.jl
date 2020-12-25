using Garamon
using Documenter

makedocs(;
    modules=[Garamon],
    authors="Jean-François Baffier",
    repo="https://github.com/JuliaConstraints/Garamon.jl/blob/{commit}{path}#L{line}",
    sitename="Garamon.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://JuliaConstraints.github.io/Garamon.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/JuliaConstraints/Garamon.jl",
)
