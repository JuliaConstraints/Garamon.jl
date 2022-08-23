module Garamon

# SECTION - includes
using Dictionaries
using PrettyTables
using SparseArrays
using StaticArrays

# SECTION - exports
export algebra
export basis
export list_geometric_algebras
export metric

# SECTION - includes
include("algebra.jl")
include("multivectors.jl")

end
