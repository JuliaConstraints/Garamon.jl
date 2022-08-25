function Base.write(
    path::AbstractString, ga::GeometricAlgebra;
    intro = "# Custom Geometric Algebra",
    metric_decomposition_refinement = true,
    metric_decomposition_numerical_cleanup = true,
    metric_decomposition_numerical_cleanup_espilon = 1e-7,
    max_dimension_precomputed_products = 256,
    max_dimension_basis_accessor = 256,
)
    io = open(path, "w")

    str = """
        $intro

        # namespace of the generated library.
        # example: cga (cga:: for conformal geometric algebra)
        <namespace>
        $(descriptor(ga))
        </namespace>

        # dimension of the algebra vector space (grade 1)
        <dimension>
        $(dimension(ga))
        </dimension>

        # inner product of basis vectors (grade 1)
        # It should be a symmetric matrix.
        # delimiter are spaces
        <metric>
        """

    write(io, str)
    writedlm(io, metric(ga), ' ')

    str = """
        </metric>

        # name of each basis vector (grade 1). They will be prefixed by the symbol 'e' in the library.
        # supported characters : letters and numbers that are compatible with C++ variable naming.
        # for hig dimensions, add a '_' at the end of the name to avoid ambiguities (e114 : 11,4 or 1,14 ? => e11_4_)
        # example: "0 1 2 3 i" will generate e0 e1 e2 e3 ei e01 e02 ... e0123i
        <basis vector name>
        """

    write(io, str)
    writedlm(io, reshape(basis(ga), (1, dimension(ga))), ' ')

    str = """
        </basis vector name>


        # The metric will be subject to an eigen vectors / values decomposition.
        # for a better numerical stability and readability, the eigen vectors can be scaled to have integer values when possible.
        # This scale is also inversely reported on the eigen values.
        # By default, we strongly suggest to activate this option.
        <metric decomposition refinement>
        $metric_decomposition_refinement
        </metric decomposition refinement>


        # The metric will be subject to an eigen vectors / values decomposition and likely subject to a decomposition refinement.
        # These two steps may lead to numerical errors that should be corrected.
        # The clean up consists in:
        # - replacing the "near zero" values (i.e. x=-1.0e-8) by zero
        # - replacing any floating point by the nearest integer if their respective distance is smaller than epsilon
        # - replacing any floating point by the nearest decimal if their respective distance is smaller than epsilon
        # By default, we strongly suggest to activate this option. If the cleanup fails, you may disable this option.
        <metric decomposition numerical cleanup>
        $metric_decomposition_numerical_cleanup
        </metric decomposition numerical cleanup>


        # Thresold used for the metric decomposition numerical cleanup.
        # Default value is 1.0-7.
        <metric decomposition numerical cleanup espilon>
        $metric_decomposition_numerical_cleanup_espilon
        </metric decomposition numerical cleanup espilon>


        # For high dimensional Geometric Algebra.
        # Each multivector component of grade k can have a dedicated precomputed product if its cardinality (max number of element of grade k) is lower than this threshold.
        # Else, the product is performed recursively.
        # Default is 256 (full library implementation up to dim 10. Precomputed products for vectors and bivectors in dim 15.)
        <max dimension precomputed products>
        $max_dimension_precomputed_products
        </max dimension precomputed products>


        # Each multivector component of grade k can have a dedicated basis accessor constant (e.g. E123 in "mv[E123]=42;") if the k-vector cardinality (max number of element of grade k) is lower than this threshold.
        # Else, these accessors of grade k are not created.
        # Default is 256 (full library implementation up to dim 10. Accessors for scalar, vectors, bivectors, dual-bivector, dual-scalar and pseudo-scalar in dim 15.)
        <max dimension basis accessor>
        $max_dimension_basis_accessor
        </max dimension basis accessor>
        """

    write(io, str)
    close(io)
    return nothing
end
