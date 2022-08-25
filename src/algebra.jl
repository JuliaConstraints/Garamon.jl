struct GeometricAlgebra{T<:Number,M<:AbstractMatrix{T}}
    metric::M
    basis::Vector{String}
    kind::Symbol
    multiplicity::Int
    object_dim::Int
end

metric(ga) = ga.metric
basis(ga) = ga.basis
kind(ga) = ga.kind
multiplicity(ga) = ga.multiplicity
object_dim(ga) = ga.object_dim

dimension(metric) = size(metric, 1)
dimension(ga::GeometricAlgebra) = dimension(metric(ga))

single_metric(m::AbstractMatrix, _) = m
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
    kind = :none;
    multiplicity = 1,
    object_dim = 1,
)
    inner_kind = kind == :none ? :ega : kind
    metric = single_metric(metric_or_space_dim, inner_kind)
    metric = multiple_metric(metric, multiplicity)
    metric = max_object_dim(metric, object_dim)
    basis = basis_vectors_names(metric, multiplicity, object_dim, Val(inner_kind))
    return GeometricAlgebra(metric, basis, kind, multiplicity, object_dim)
end

limit_bases_indices(kind) = limit_bases_indices(Val(kind))

function delimiter_indices(metric, multiplicity, object_dim, kind)
    λ = 9 + multiplicity * limit_bases_indices(kind)
    return dimension(metric) < λ ? "" : "_"
end

function basis_vectors_names(ga)
    m, μ, d = metric(ga), multiplicity(ga), object_dim(ga)
    return basis_vectors_names(m, μ, d, Val(kind(ga)))
end
space_dimension(dim, ::Val) = dim
space_dimension(ga) = space_dimension(div(dimension(ga), multiplicity(ga)), Val(kind(ga)))

function descriptor(ga)
    pre = kind(ga) == :none ? "my" : string(kind(ga))[1:end-2]
    spd = space_dimension(ga)
    str = "ga"
    mul = multiplicity(ga) == 1 ? "" : string(multiplicity(ga))
    obj = object_dim(ga) == 1 ? "" : "_$(object_dim(ga))"
    return "$pre$spd$str$mul$obj"
end

# SECTION - Euclidean Geometric Algebra
limit_bases_indices(::Val{:ega}) = 0

function basis_vectors_names(m, μ, d, ::Val{:ega})
    di = delimiter_indices(m, μ, d, :ega)
    return ["$di$d" for d in 1:dimension(m)]
end

single_metric(space_dim, ::Val{:ega}) = SMatrix{space_dim,space_dim}(I(space_dim))

# SECTION - Conformal Geometric Algebra

limit_bases_indices(::Val{:cga}) = 2

function basis_vectors_names(m, μ, d, ::Val{:cga})
    di = delimiter_indices(m, μ, d, :cga)
    names = Vector{String}()
    for i in 1:μ
        for j in 0:(dimension(m) ÷ μ - 2)
            d = j == 0 && μ > 1 ? string(i) : ""
            push!(names, "$di$j$d")
        end
        d = μ > 1 ? string(i) : ""
        push!(names, "i$i")
    end
    return names
end

function single_metric(space_dim, ::Val{:cga})
    dim = space_dim + 2
    f = (i, j) -> 1 < i == j < dim ? 1.0 :
                  ((i, j) == (1, dim) || (i, j) == (dim, 1)) ? -1.0 : 0.0
    return SMatrix{dim,dim}([f(i, j) for i in 1:dim, j in 1:dim])
end

space_dimension(dim, ::Val{:cga}) = dim - 2

# SECTION - Projective Geometric Algebra

limit_bases_indices(::Val{:pga}) = 1

function basis_vectors_names(m, μ, d, ::Val{:pga})
    di = delimiter_indices(m, μ, d, :pga)
    return ["$di$d" for d in 0:(dimension(m)-1)]
end

function single_metric(space_dim, ::Val{:pga})
    dim = space_dim + 1
    f = (i, j) -> 1 < i == j ≤ dim ? 1.0 : 0.0
    return SMatrix{dim,dim}([f(i, j) for i in 1:dim, j in 1:dim])
end

# SECTION - Projective Space Geometric Algebra

limit_bases_indices(::Val{:psga}) = 9

function basis_vectors_names(m, μ, d, ::Val{:psga})
    di = delimiter_indices(m, μ, d, :psga)
    inds = Vector{String}()
    dimdiv2 = round(Int, dimension(m) / 2)
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
