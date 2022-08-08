abstract type AbstractMultiVector end

struct DenseMultiVector{D} <: AbstractMultiVector
    coords
end

struct SparseMultiVector{D} <: AbstractMultiVector
    # Dictionaries.jl
end
