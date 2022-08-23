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
            @test dimension(ga1) == length(basis(ga1))
        end
    end

    @testset "Garamon.jl: EGAs" begin
        for (d, m) in EGAs
            ga1 = algebra(d, :ega)
            ga2 = algebra(m, :ega)
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

    @testset "Garamon.jl: P3GAs" begin
        for (d, m) in P3GAs
            ga1 = algebra(d, :p3ga)
            ga2 = algebra(m, :p3ga)
            @test metric(ga1) == metric(ga2)
            @test basis(ga1) == basis(ga2)
            @test dimension(ga1) == length(basis(ga1))

        end
    end
end
