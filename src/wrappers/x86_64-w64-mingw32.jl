# Autogenerated wrapper script for PCRE2_jll for x86_64-w64-mingw32
export libpcre2_16, libpcre2_32, libpcre2_8

JLLWrappers.@generate_wrapper_header("PCRE2")
JLLWrappers.@declare_library_product(libpcre2_16, "libpcre2-16-0.dll")
JLLWrappers.@declare_library_product(libpcre2_32, "libpcre2-32-0.dll")
JLLWrappers.@declare_library_product(libpcre2_8, "libpcre2-8-0.dll")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libpcre2_16,
        "bin\\libpcre2-16-0.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libpcre2_32,
        "bin\\libpcre2-32-0.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libpcre2_8,
        "bin\\libpcre2-8-0.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
