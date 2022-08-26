module Garamon

# SECTION - includes
using DelimitedFiles
using Dictionaries
using LinearAlgebra
using PrettyTables
using SparseArrays
using StaticArrays

# SECTION - exports
export algebra
export basis
export dimension
export kind
export list_geometric_algebras
export metric
export multiplicity
export object_dim

# SECTION - includes
include("algebra.jl")
include("conf.jl")
include("multivectors.jl")

end
