using StaticArrays

struct naive_mv{D,T}
    bitIdx :: Int16 = D # 
    values :: MVector
end

v1 = MVector{10,Float64}(1,1,1,0,0,0,2,3,4,5) # bivector example in 5 dim vector space

println(v1)


mv1 = naive_mv{32,Float64}(10, v1)

println("multivector bitmap = ",mv1.bitIdx)
