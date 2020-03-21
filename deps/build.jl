using PyCall

# Change that to whatever packages you need.
const PACKAGES = ["numpy", "cma"]

# Use eventual proxy info
proxy_arg=String[]
if haskey(ENV, "http_proxy")
    push!(proxy_arg, "--proxy")
    push!(proxy_arg, ENV["http_proxy"])
end

# Import pip
if !PyCall.pyexists("pip")
    # If it is not found, install it
    println("Pip not found on your system. Downloading it.")
    get_pip = joinpath(dirname(@__FILE__), "get-pip.py")
    download("https://bootstrap.pypa.io/get-pip.py", get_pip)
    run(`$(PyCall.python) $(proxy_arg) $get_pip --user`)
end

println("Installing required python packages using pip")
run(`$(PyCall.python) $(proxy_arg) -m pip install --user $(PACKAGES)`)
