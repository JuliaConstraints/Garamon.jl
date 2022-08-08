abstract type AbstractGeometricAlgebra end

metric(ga) = ga.metric
basis(ga) = ga.basis

dimension(metric) = size(metric, 1)
dimension(ga::AbstractGeometricAlgebra) = dimension(ga.metric)

algebra(metric_or_dim, kind) = algebra(metric_or_dim, Val(kind))

limit_bases_indices(kind) = limit_bases_indices(Val(kind))

delimiter_indices(metric, kind) = dimension(metric) < limit_bases_indices(kind) ? "" : "_"

basis_vectors_names(metric, kind) = basis_vectors_names(metric, Val(kind))

function Base.isequal(ga1::AbstractGeometricAlgebra, ga2::AbstractGeometricAlgebra)
    return isequal(ga1.metric, ga2.metric) && isequal(ga1.basis, ga2.basis)
end

# NOTE - StaticArray or SparseArray for metric matrix ?

struct ConformalGeometricAlgebra{T<:Number, M<:AbstractMatrix{T}} <: AbstractGeometricAlgebra
    metric::M
    basis::Vector{String}
end

limit_bases_indices(::Val{:cga}) = 11

function basis_vectors_names(metric, ::Val{:cga})
    di = delimiter_indices(metric, :cga)
    return push!(["$di$d" for d in 0:(dimension(metric)-1)], "$(di)i")
end

function algebra(metric, ::Val{:cga})
    basis = basis_vectors_names(metric, :cga)
    return ConformalGeometricAlgebra(metric, basis)
end

function algebra(space_dim::Int, ::Val{:cga})
    dim = space_dim + 2
    metric = zeros(dim, dim)
    metric[dim, 1] = -1.0
    foreach(i -> metric[i, i] = 1.0, 2:dim-1)
    metric[1, dim] = -1.0
    return algebra(metric, :cga)
end

# NOTE - Should we keep it?
struct VanillaGeometricAlgebra{T<:Number} <: AbstractGeometricAlgebra
    metric::Matrix{T}
    basis::Vector{String}
end

struct ProjectiveGeometricAlgebra{T<:Number} <: AbstractGeometricAlgebra
    metric::Matrix{T}
    basis::Vector{String}
end

struct SpaceTimeAlgebra{T<:Number} <: AbstractGeometricAlgebra
    metric::Matrix{T}
    basis::Vector{String}
end

struct EuclideanGeometricAlgebra{T<:Number} <: AbstractGeometricAlgebra
    metric::Matrix{T}
    basis::Vector{String}
end

struct CubicCurveConformalGeometricAlgebra{T<:Number} <: AbstractGeometricAlgebra
    metric::Matrix{T}
    basis::Vector{String}
end

struct QuadricConformalGeometricAlgebra{T<:Number} <: AbstractGeometricAlgebra
    metric::Matrix{T}
    basis::Vector{String}
end

struct OrientedProjectiveGeometryThroughVersors3D{T<:Number} <: AbstractGeometricAlgebra
    metric::Matrix{T}
    basis::Vector{String}
end

struct DoubleConformalGeometricAlgebra{T<:Number} <: AbstractGeometricAlgebra
    metric::Matrix{T}
    basis::Vector{String}
end
