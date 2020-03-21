module PyCMA

using PyCall

const cma = PyNULL()

function __init__()
    copy!(cma, pyimport("cma"))
    py"""
    import numpy as np
    """
end


end # module
