# Autogenerated wrapper script for Libuuid_jll for aarch64-apple-darwin
export libuuid

JLLWrappers.@generate_wrapper_header("Libuuid")
JLLWrappers.@declare_library_product(libuuid, "@rpath/libuuid.1.dylib")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libuuid,
        "lib/libuuid.1.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
