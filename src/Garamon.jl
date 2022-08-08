module Garamon

# SECTION - includes
using Dictionaries
using SparseArrays
using StaticArrays

# SECTION - exports
export algebra
export basis
export metric

# SECTION - includes
include("algebra.jl")
include("multivectors.jl")

end
