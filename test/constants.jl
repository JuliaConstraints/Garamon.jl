const CGAs = Dict(
    2 => [
        0 0 0 -1
        0 1 0 0
        0 0 1 0
        -1 0 0 0
    ],
    3 => [
        0 0 0 0 -1
        0 1 0 0 0
        0 0 1 0 0
        0 0 0 1 0
        -1 0 0 0 0
    ],
    4 => [
        0 0 0 0 0 -1
        0 1 0 0 0 0
        0 0 1 0 0 0
        0 0 0 1 0 0
        0 0 0 0 1 0
        -1 0 0 0 0 0
    ],
    5 => [
        0 0 0 0 0 0 -1
        0 1 0 0 0 0 0
        0 0 1 0 0 0 0
        0 0 0 1 0 0 0
        0 0 0 0 1 0 0
        0 0 0 0 0 1 0
        -1 0 0 0 0 0 0
    ],
    6 => [
        0 0 0 0 0 0 0 -1
        0 1 0 0 0 0 0 0
        0 0 1 0 0 0 0 0
        0 0 0 1 0 0 0 0
        0 0 0 0 1 0 0 0
        0 0 0 0 0 1 0 0
        0 0 0 0 0 0 1 0
        -1 0 0 0 0 0 0 0
    ],
    7 => [
        0 0 0 0 0 0 0 0 -1
        0 1 0 0 0 0 0 0 0
        0 0 1 0 0 0 0 0 0
        0 0 0 1 0 0 0 0 0
        0 0 0 0 1 0 0 0 0
        0 0 0 0 0 1 0 0 0
        0 0 0 0 0 0 1 0 0
        0 0 0 0 0 0 0 1 0
        -1 0 0 0 0 0 0 0 0
    ],
    8 => [
        0 0 0 0 0 0 0 0 0 -1
        0 1 0 0 0 0 0 0 0 0
        0 0 1 0 0 0 0 0 0 0
        0 0 0 1 0 0 0 0 0 0
        0 0 0 0 1 0 0 0 0 0
        0 0 0 0 0 1 0 0 0 0
        0 0 0 0 0 0 1 0 0 0
        0 0 0 0 0 0 0 1 0 0
        0 0 0 0 0 0 0 0 1 0
        -1 0 0 0 0 0 0 0 0 0
    ],
    9 => [
        0 0 0 0 0 0 0 0 0 0 -1
        0 1 0 0 0 0 0 0 0 0 0
        0 0 1 0 0 0 0 0 0 0 0
        0 0 0 1 0 0 0 0 0 0 0
        0 0 0 0 1 0 0 0 0 0 0
        0 0 0 0 0 1 0 0 0 0 0
        0 0 0 0 0 0 1 0 0 0 0
        0 0 0 0 0 0 0 1 0 0 0
        0 0 0 0 0 0 0 0 1 0 0
        0 0 0 0 0 0 0 0 0 1 0
        -1 0 0 0 0 0 0 0 0 0 0
    ],
    10 => [
        0 0 0 0 0 0 0 0 0 0 0 -1
        0 1 0 0 0 0 0 0 0 0 0 0
        0 0 1 0 0 0 0 0 0 0 0 0
        0 0 0 1 0 0 0 0 0 0 0 0
        0 0 0 0 1 0 0 0 0 0 0 0
        0 0 0 0 0 1 0 0 0 0 0 0
        0 0 0 0 0 0 1 0 0 0 0 0
        0 0 0 0 0 0 0 1 0 0 0 0
        0 0 0 0 0 0 0 0 1 0 0 0
        0 0 0 0 0 0 0 0 0 1 0 0
        0 0 0 0 0 0 0 0 0 0 1 0
        -1 0 0 0 0 0 0 0 0 0 0 0
    ],
    11 => [
        0 0 0 0 0 0 0 0 0 0 0 0 -1
        0 1 0 0 0 0 0 0 0 0 0 0 0
        0 0 1 0 0 0 0 0 0 0 0 0 0
        0 0 0 1 0 0 0 0 0 0 0 0 0
        0 0 0 0 1 0 0 0 0 0 0 0 0
        0 0 0 0 0 1 0 0 0 0 0 0 0
        0 0 0 0 0 0 1 0 0 0 0 0 0
        0 0 0 0 0 0 0 1 0 0 0 0 0
        0 0 0 0 0 0 0 0 1 0 0 0 0
        0 0 0 0 0 0 0 0 0 1 0 0 0
        0 0 0 0 0 0 0 0 0 0 1 0 0
        0 0 0 0 0 0 0 0 0 0 0 1 0
        -1 0 0 0 0 0 0 0 0 0 0 0 0
    ],
    12 => [
        0 0 0 0 0 0 0 0 0 0 0 0 0 -1
        0 1 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 1 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 1 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 1 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 1 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 1 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 1 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 1 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 1 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 1 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 1 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 1 0
        -1 0 0 0 0 0 0 0 0 0 0 0 0 0
    ],
    13 => [
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1
        0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 1 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 1 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 1 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 1 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 1 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 1 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 1 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 1 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 1 0
        -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    ],
    14 => [
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1
        0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0
        -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    ],
    15 => [
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1
        0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0
        -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    ],
    16 => [
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1
        0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0
        -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    ],
    17 => [
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1
        0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0
        -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    ],
    20 => [
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1
        0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0
        -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    ],
)

const C3GAs = Dict(
    2 => [
        0 0 0 0 -1 0 0 0 0 0
        0 1 0 0 0 0 0 0 0 0
        0 0 1 0 0 0 0 0 0 0
        0 0 0 1 0 0 0 0 0 0
        -1 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 -1
        0 0 0 0 0 0 1 0 0 0
        0 0 0 0 0 0 0 1 0 0
        0 0 0 0 0 0 0 0 1 0
        0 0 0 0 0 -1 0 0 0 0
    ],
    3 => [
        0 0 0 0 -1 0 0 0 0 0 0 0 0 0 0
        0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
        -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 -1 0 0 0 0 0
        0 0 0 0 0 0 1 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 1 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 1 0 0 0 0 0 0
        0 0 0 0 0 -1 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1
        0 0 0 0 0 0 0 0 0 0 0 1 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 1 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 1 0
        0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0
    ],
)

const VGAs = Dict(
    # what number ?
    3 => [
        0 0 0 1 0 0
        0 0 0 0 1 0
        0 0 0 0 0 1
        1 0 0 0 0 0
        0 1 0 0 0 0
        0 0 1 0 0 0
    ],
)

const STGAs = Dict(
    3 => [
        1 0 0 0
        0 -1 0 0
        0 0 -1 0
        0 0 0 -1
    ],
)

const STGA2s = Dict(
    3 => [
        1 0 0 0 0 0 0 0
        0 -1 0 0 0 0 0 0
        0 0 -1 0 0 0 0 0
        0 0 0 -1 0 0 0 0
        0 0 0 0 1 0 0 0
        0 0 0 0 0 -1 0 0
        0 0 0 0 0 0 -1 0
        0 0 0 0 0 0 0 -1
    ],
)

const QCGAs = Dict(
    2 => [
        1 0 0 0 0 0 0 0
        0 1 0 0 0 0 0 0
        0 0 0 -1 0 0 0 0
        0 0 -1 0 0 0 0 0
        0 0 0 0 0 -1 0 0
        0 0 0 0 -1 0 0 0
        0 0 0 0 0 0 0 -1
        0 0 0 0 0 0 -1 0
    ],
    3 => [
        1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 -1 0 0 0 0 0 0 0 0 0 0
        0 0 0 -1 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 -1 0 0 0 0 0 0 0 0
        0 0 0 0 0 -1 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 -1 0 0 0 0 0 0
        0 0 0 0 0 0 0 -1 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 -1 0 0 0 0
        0 0 0 0 0 0 0 0 0 -1 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 -1 0 0
        0 0 0 0 0 0 0 0 0 0 0 -1 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 -1
        0 0 0 0 0 0 0 0 0 0 0 0 0 -1 0
    ],
)

const EGAs = Dict(
    2 => [
        1 0
        0 1
    ],
    3 => [
        1 0 0
        0 1 0
        0 0 1
    ],
    4 => [
        1 0 0 0
        0 1 0 0
        0 0 1 0
        0 0 0 1
    ],
    5 => [
        1 0 0 0 0
        0 1 0 0 0
        0 0 1 0 0
        0 0 0 1 0
        0 0 0 0 1
    ],
    7 => [
        1 0 0 0 0 0 0
        0 1 0 0 0 0 0
        0 0 1 0 0 0 0
        0 0 0 1 0 0 0
        0 0 0 0 1 0 0
        0 0 0 0 0 1 0
        0 0 0 0 0 0 1
    ],
    16 => [
        1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
    ],
    18 => [
        1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
    ],
    20 => [
        1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
    ],
    25 => [
        1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0
        0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
    ],
)

const PGAs = Dict(
    2 => [
        0 0 0
        0 1 0
        0 0 1
    ],
    3 => [
        0 0 0 0
        0 1 0 0
        0 0 1 0
        0 0 0 1
    ],
)

const P3GAs = Dict(
    3 => [
        0 0 0 0 0.5 0 0 0
        0 0 0 0 0 0.5 0 0
        0 0 0 0 0 0 0.5 0
        0 0 0 0 0 0 0 0.5
        0.5 0 0 0 0 0 0 0
        0 0.5 0 0 0 0 0 0
        0 0 0.5 0 0 0 0 0
        0 0 0 0.5 0 0 0 0
    ],
)