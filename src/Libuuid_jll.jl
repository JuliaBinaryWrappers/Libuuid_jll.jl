module Libuuid_jll
using Pkg, Pkg.BinaryPlatforms, Pkg.Artifacts, Libdl
import Base: UUID

# Load Artifacts.toml file
artifacts_toml = joinpath(@__DIR__, "..", "Artifacts.toml")

# Extract all platforms
artifacts = Pkg.Artifacts.load_artifacts_toml(artifacts_toml; pkg_uuid=UUID("38a345b3-de98-5d2b-a5d3-14cd9215e700"))
platforms = [Pkg.Artifacts.unpack_platform(e, "Libuuid", artifacts_toml) for e in artifacts["Libuuid"]]

# Filter platforms based on what wrappers we've generated on-disk
platforms = filter(p -> isfile(joinpath(@__DIR__, "wrappers", triplet(p) * ".jl")), platforms)

# From the available options, choose the best platform
best_platform = select_platform(Dict(p => triplet(p) for p in platforms))

if best_platform === nothing
    error("Unable to load Libuuid; unsupported platform $(triplet(platform_key_abi()))")
end

# Load the appropriate wrapper
include(joinpath(@__DIR__, "wrappers", "$(best_platform).jl"))

end  # module Libuuid_jll
