using Garamon
using Test

include("constants.jl")

@testset "Garamon.jl" begin
    @info "Print list of geometric algebras descriptors"
    list_geometric_algebras()

    @testset "Garamon.jl: EGAs" begin
        for (d, m) in EGAs
            ga1 = algebra(d)
            ga2 = algebra(m)
            @test metric(ga1) == metric(ga2)
            @test basis(ga1) == basis(ga2)
            @test dimension(ga1) == length(basis(ga1))
        end
    end

    @testset "Garamon.jl: CGAs" begin
        for (d, m) in CGAs
            ga1 = algebra(d[1], :cga; multiplicity = d[2], object_dim = d[3])
            ga2 = algebra(m, :cga)
            @test metric(ga1) == metric(ga2)
            @test basis(ga1) == basis(ga2)
            @test dimension(ga1) == length(basis(ga1))
        end
    end

    @testset "Garamon.jl: PGAs" begin
        for (d, m) in PGAs
            ga1 = algebra(d, :pga)
            ga2 = algebra(m, :pga)
            @test metric(ga1) == metric(ga2)
            @test basis(ga1) == basis(ga2)
            @test dimension(ga1) == length(basis(ga1))
        end
    end

    @testset "Garamon.jl: PSGAs" begin
        for (d, m) in PSGAs
            ga1 = algebra(d, :psga)
            ga2 = algebra(m, :psga)
            @test metric(ga1) == metric(ga2)
            @test basis(ga1) == basis(ga2)
            @test dimension(ga1) == length(basis(ga1))

        end
    end
end
