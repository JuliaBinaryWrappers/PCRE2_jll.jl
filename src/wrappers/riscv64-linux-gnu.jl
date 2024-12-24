# Autogenerated wrapper script for PCRE2_jll for riscv64-linux-gnu
export libpcre2_16, libpcre2_32, libpcre2_8

JLLWrappers.@generate_wrapper_header("PCRE2")
JLLWrappers.@declare_library_product(libpcre2_16, "libpcre2-16.so.0")
JLLWrappers.@declare_library_product(libpcre2_32, "libpcre2-32.so.0")
JLLWrappers.@declare_library_product(libpcre2_8, "libpcre2-8.so.0")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libpcre2_16,
        "lib/libpcre2-16.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libpcre2_32,
        "lib/libpcre2-32.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libpcre2_8,
        "lib/libpcre2-8.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
