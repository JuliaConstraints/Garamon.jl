using Garamon
using Test

include("constants.jl")

@testset "Garamon.jl" begin
    @info "Print list of geometric algebras descriptors"
    list_geometric_algebras()

    @testset "Garamon.jl: CGAs" begin
        for (d, m) in CGAs
            ga1 = algebra(d, :cga)
            ga2 = algebra(m, :cga)
            @test metric(ga1) == metric(ga2)
            @test basis(ga1) == basis(ga2)
        end
    end
end
