function inner_product(ga, a, b)
    m = metric(ga)
    # return transform_metric(m)
    nothing
end

function outer_product(a, b)

end

function ∧(a::MultiVector{D1}, b::MultiVector{D2})

end

function geometric_product(ga, a, b)
    inner_product(ga, a, b) + out_product(a, b)
end
