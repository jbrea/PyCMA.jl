# PyCMA.jl

![Lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)<!--
![Lifecycle](https://img.shields.io/badge/lifecycle-maturing-blue.svg)
![Lifecycle](https://img.shields.io/badge/lifecycle-stable-green.svg)
![Lifecycle](https://img.shields.io/badge/lifecycle-retired-orange.svg)
![Lifecycle](https://img.shields.io/badge/lifecycle-archived-red.svg)
![Lifecycle](https://img.shields.io/badge/lifecycle-dormant-blue.svg) -->
[![Build Status](https://travis-ci.com/jbrea/PyCMA.jl.svg?branch=master)](https://travis-ci.com/jbrea/PyCMA.jl)
[![codecov.io](http://codecov.io/github/jbrea/PyCMA.jl/coverage.svg?branch=master)](http://codecov.io/github/jbrea/PyCMA.jl?branch=master)
<!--
[![Documentation](https://img.shields.io/badge/docs-stable-blue.svg)](https://jbrea.github.io/PyCMA.jl/stable)
[![Documentation](https://img.shields.io/badge/docs-master-blue.svg)](https://jbrea.github.io/PyCMA.jl/dev)
-->

A tiny Julia wrapper of [pycma](https://github.com/CMA-ES/pycma).
Install in a julia repl with
```julia
]add https://github.com/jbrea/PyCMA.jl
```

```@example
using PyCMA
f(x) = sum(abs2, x)
PyCMA.cma.fmin(f, ones(10), .25)
?PyCMA.cma
?PyCMA.cma.fmin
```
