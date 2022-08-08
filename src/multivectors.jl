abstract type AbstractMultiVector end
# abstract type AbstractMultiVector{D <: Int, T <: Number} end

struct DenseMultiVector{D, T <: Number} <: AbstractMultiVector
    values::SVector{D, T}
end

struct SparseMultiVector{D, T <: Number} <: AbstractMultiVector
    values::SparseVector{T}
end

struct DictMultiVector{D, T <: Number} <: AbstractMultiVector
    values::Vector{Dictionary{NTuple, T}}
end

function DictMultiVector{D, T}() where {D, T <: Number}
    values = Vector{Dictionary{NTuple, T}}()
    for i in 0:(D+1)
        push!(values, Dictionary{NTuple{i, Int}, T}())
    end
    return DictMultiVector(values)
end
