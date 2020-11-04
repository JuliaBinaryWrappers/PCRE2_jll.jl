# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule PCRE2_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("PCRE2")
JLLWrappers.@generate_main_file("PCRE2", UUID("efcefdf7-47ab-520b-bdef-62a2eaa19f15"))
end  # module PCRE2_jll
