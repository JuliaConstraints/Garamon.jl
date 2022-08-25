struct GeometricAlgebra{T<:Number,M<:AbstractMatrix{T}}
    metric::M
    basis::Vector{String}
end

metric(ga) = ga.metric
basis(ga) = ga.basis

dimension(metric) = size(metric, 1)
dimension(ga::GeometricAlgebra) = dimension(ga.metric)

single_metric(metric::AbstractMatrix, _) = metric
single_metric(space_dim, kind) = single_metric(space_dim, Val(kind))

function multiple_metric(metric, multiplicity)
    n = dimension(metric)
    N = multiplicity * n
    M = spzeros(N, N)
    for i in 0:(multiplicity - 1), j in 1:n, k in 1:n
        x = i * n + j
        y = i * n + k
        M[x, y] = metric[j, k]
    end
    return M
end

max_object_dim(metric, object_dim) = metric

function algebra(
    metric_or_space_dim,
    kind = :ega;
    multiplicity = 1,
    object_dim = 1,
)
    metric = single_metric(metric_or_space_dim, kind)
    metric = multiple_metric(metric, multiplicity)
    metric = max_object_dim(metric, object_dim)
    basis = basis_vectors_names(metric, kind)
    return GeometricAlgebra(metric, basis)
end

limit_bases_indices(kind) = limit_bases_indices(Val(kind))

function delimiter_indices(metric, kind)
    return dimension(metric) < limit_bases_indices(kind) ? "" : "_"
end

basis_vectors_names(metric, kind) = basis_vectors_names(metric, Val(kind))

# SECTION - Euclidean Geometric Algebra
limit_bases_indices(::Val{:ega}) = 9

function basis_vectors_names(metric, ::Val{:ega})
    di = delimiter_indices(metric, :ega)
    return ["$di$d" for d in 1:dimension(metric)]
end

single_metric(space_dim, ::Val{:ega}) = SMatrix{space_dim,space_dim}(I(space_dim))

# SECTION - Conformal Geometric Algebra

limit_bases_indices(::Val{:cga}) = 11

function basis_vectors_names(metric, ::Val{:cga})
    di = delimiter_indices(metric, :cga)
    return push!(["$di$d" for d in 0:(dimension(metric)-2)], "$(di)i")
end

function single_metric(space_dim, ::Val{:cga})
    dim = space_dim + 2
    f = (i, j) -> 1 < i == j < dim ? 1.0 :
                  ((i, j) == (1, dim) || (i, j) == (dim, 1)) ? -1.0 : 0.0
    return SMatrix{dim,dim}([f(i, j) for i in 1:dim, j in 1:dim])
end

# SECTION - Projective Geometric Algebra

limit_bases_indices(::Val{:pga}) = 10

function basis_vectors_names(metric, ::Val{:pga})
    di = delimiter_indices(metric, :pga)
    return ["$di$d" for d in 0:(dimension(metric)-1)]
end

function single_metric(space_dim, ::Val{:pga})
    dim = space_dim + 1
    f = (i, j) -> 1 < i == j ≤ dim ? 1.0 : 0.0
    return SMatrix{dim,dim}([f(i, j) for i in 1:dim, j in 1:dim])
end

# SECTION - Projective Space Geometric Algebra

limit_bases_indices(::Val{:psga}) = 18

function basis_vectors_names(metric, ::Val{:psga})
    di = delimiter_indices(metric, :psga)
    inds = Vector{String}()
    dimdiv2 = round(Int, dimension(metric) / 2)
    for d in ["", "d"], i in 1:dimdiv2
        push!(inds, "$d$di$i")
    end
    return inds
end

function single_metric(space_dim::Int, ::Val{:psga})
    dim = space_dim + 1
    f = (i, j) -> abs(i - j) == dim ? 0.5 : 0.0
    return SMatrix{2dim,2dim}([f(i, j) for i in 1:2dim, j in 1:2dim])
end

# SECTION - Table of different GA
const GEOMETRIC_ALGEBRAS = Dict(
    :cga => "Conformal Geometric Algebra",
    :ega => "Euclidean Geometric Algebra",
    :pga => "Projective Geometric Algebra",
    :psga => "Projective Space Geometric Algebra",
)

list_geometric_algebras(list=GEOMETRIC_ALGEBRAS) = pretty_table(list)
