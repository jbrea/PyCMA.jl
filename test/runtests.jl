using PyCMA
using Test

f(x) = sum(abs2, x)
res = PyCMA.cma.fmin(f, ones(3), .25)
@test f(res[1]) ≈ 0 atol = 1e-12
