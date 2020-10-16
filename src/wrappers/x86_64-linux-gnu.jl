# Autogenerated wrapper script for Libuuid_jll for x86_64-linux-gnu
export libuuid

JLLWrappers.@generate_wrapper_header("Libuuid")
JLLWrappers.@declare_library_product(libuuid, "libuuid.so.1")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libuuid,
        "lib/libuuid.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
