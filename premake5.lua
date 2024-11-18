project "opennurbs"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "on"
    
    targetdir(envir_work_space_directory .. "/bin/" .. envir_output_directory .. "/%{prj.name}")
    objdir(envir_work_space_directory .. "/bin-int/" .. envir_output_directory .. "/%{prj.name}")

    defines {"_CRT_SECURE_NO_WARNINGS"}

    files {
        "premake5.lua"
    }
    
    postbuildcommands {
        ("{COPY} \"" .. envir_work_space_directory .. "/vendor/opennurbs/bin/x64/Release\" \"../../bin/" .. envir_output_directory .. "/sandbox/\""),
        ("{COPY} \"" .. envir_work_space_directory .. "/vendor/opennurbs/bin/x64/Release\" \"../../bin/" .. envir_output_directory .. "/unittest/\""),
    }