# Autogenerated wrapper script for PCRE2_jll for aarch64-linux-musl
export libpcre2_16, libpcre2_32, libpcre2_8

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libpcre2_16`
const libpcre2_16_splitpath = ["lib", "libpcre2-16.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libpcre2_16_path = ""

# libpcre2_16-specific global declaration
# This will be filled out by __init__()
libpcre2_16_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libpcre2_16 = "libpcre2-16.so.0"


# Relative path to `libpcre2_32`
const libpcre2_32_splitpath = ["lib", "libpcre2-32.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libpcre2_32_path = ""

# libpcre2_32-specific global declaration
# This will be filled out by __init__()
libpcre2_32_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libpcre2_32 = "libpcre2-32.so.0"


# Relative path to `libpcre2_8`
const libpcre2_8_splitpath = ["lib", "libpcre2-8.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libpcre2_8_path = ""

# libpcre2_8-specific global declaration
# This will be filled out by __init__()
libpcre2_8_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libpcre2_8 = "libpcre2-8.so.0"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"PCRE2")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libpcre2_16_path = normpath(joinpath(artifact_dir, libpcre2_16_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libpcre2_16_handle = dlopen(libpcre2_16_path)
    push!(LIBPATH_list, dirname(libpcre2_16_path))

    global libpcre2_32_path = normpath(joinpath(artifact_dir, libpcre2_32_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libpcre2_32_handle = dlopen(libpcre2_32_path)
    push!(LIBPATH_list, dirname(libpcre2_32_path))

    global libpcre2_8_path = normpath(joinpath(artifact_dir, libpcre2_8_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libpcre2_8_handle = dlopen(libpcre2_8_path)
    push!(LIBPATH_list, dirname(libpcre2_8_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')
end  # __init__()

