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
    return push!(["$di$d" for d in 0:(dimension(metric)-2)], "$(di)i")
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

# SECTION - Euclidean Geometric Algebra
limit_bases_indices(::Val{:ega}) = 9

function basis_vectors_names(metric, ::Val{:ega})
    di = delimiter_indices(metric, :ega)
    return ["$di$d" for d in 1:dimension(metric)]
end

function algebra(metric, ::Val{:ega})
    basis = basis_vectors_names(metric, :ega)
    return GeometricAlgebra(metric, basis)
end

algebra(space_dim::Int, ::Val{:ega}) = algebra(SMatrix{space_dim,space_dim}(I(space_dim)), :ega)

# SECTION - Projective Geometric Algebra

limit_bases_indices(::Val{:pga}) = 10

function basis_vectors_names(metric, ::Val{:pga})
    di = delimiter_indices(metric, :pga)
    return ["$di$d" for d in 0:(dimension(metric)-1)]
end

function algebra(metric, ::Val{:pga})
    basis = basis_vectors_names(metric, :pga)
    return GeometricAlgebra(metric, basis)
end

function algebra(space_dim::Int, ::Val{:pga})
    dim = space_dim + 1
    f = (i, j) -> 1 < i == j ≤ dim ? 1.0 : 0.0
    return algebra(SMatrix{dim,dim}([f(i, j) for i in 1:dim, j in 1:dim]), :pga)
end

# SECTION - Projective Geometric Algebra -- multiple

limit_bases_indices(::Val{:p3ga}) = 18

function basis_vectors_names(metric, ::Val{:p3ga})
    di = delimiter_indices(metric, :p3ga)
    inds = Vector{String}()
    dimdiv2 = round(Int, dimension(metric) / 2)
    for d in ["", "d"], i in 1:dimdiv2
        push!(inds, "$d$di$i")
    end
    return inds
end

function algebra(metric, ::Val{:p3ga})
    basis = basis_vectors_names(metric, :p3ga)
    return GeometricAlgebra(metric, basis)
end

function algebra(space_dim::Int, ::Val{:p3ga})
    dim = space_dim + 1
    f = (i, j) -> abs(i - j) == dim ? 0.5 : 0.0
    return algebra(SMatrix{2dim,2dim}([f(i, j) for i in 1:2dim, j in 1:2dim]), :p3ga)
end

# SECTION - Table of different GA
const GEOMETRIC_ALGEBRAS = Dict(
    :cga => "Conformal Geometric Algebra",
    :ega => "Euclidean Geometric Algebra",
    :pga => "Projective Geometric Algebra",
    :p3ga => "Projective Geometric Algebra - multiple basis",
)

list_geometric_algebras(list=GEOMETRIC_ALGEBRAS) = pretty_table(list)
