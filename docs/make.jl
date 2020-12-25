using Garamon
using Documenter

makedocs(;
    modules=[Garamon],
    authors="Jean-François Baffier",
    repo="https://github.com/JuliaConstraints/Garamon.jl/blob/{commit}{path}#L{line}",
    sitename="Garamon.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", nothing) == "true",
        canonical="https://JuliaConstraints.github.io/Garamon.jl",
        assets = ["assets/favicon.ico"; "assets/github_buttons.js"; "assets/custom.css"],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/JuliaConstraints/Garamon.jl",
    devbranch="main",
)
