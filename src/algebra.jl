struct GeometricAlgebra{T<:Number,M<:AbstractMatrix{T}}
    metric::M
    basis::Vector{String}
end

metric(ga) = ga.metric
basis(ga) = ga.basis

dimension(metric) = size(metric, 1)
dimension(ga::GeometricAlgebra) = dimension(ga.metric)

algebra(metric_or_dim, kind) = algebra(metric_or_dim, Val(kind))

limit_bases_indices(kind) = limit_bases_indices(Val(kind))

delimiter_indices(metric, kind) = dimension(metric) < limit_bases_indices(kind) ? "" : "_"

basis_vectors_names(metric, kind) = basis_vectors_names(metric, Val(kind))

# SECTION - Conformal Geometric Algebra

limit_bases_indices(::Val{:cga}) = 11

function basis_vectors_names(metric, ::Val{:cga})
    di = delimiter_indices(metric, :cga)
    return push!(["$di$d" for d in 0:(dimension(metric)-1)], "$(di)i")
end

function algebra(metric, ::Val{:cga})
    basis = basis_vectors_names(metric, :cga)
    return GeometricAlgebra(metric, basis)
end

function algebra(space_dim::Int, ::Val{:cga})
    dim = space_dim + 2
    f = (i, j) -> 1 < i == j < dim ? 1.0 :
                  ((i, j) == (1, dim) || (i, j) == (dim, 1)) ? -1.0 : 0.0
    return algebra(SMatrix{dim,dim}([f(i, j) for i in 1:dim, j in 1:dim]), :cga)
end

# SECTION - Table of different GA
const GEOMETRIC_ALGEBRAS = Dict(
    :cga => "Conformal Geometric Algebra",
)

list_geometric_algebras(list=GEOMETRIC_ALGEBRAS) = pretty_table(list)

