project "Box2D"
    kind "StaticLib"
    language "C++"
    cppdialect "C++11"
    staticruntime "off"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "src/**.h",
        "src/**.cpp",
        "include/**.h"
    }

    includedirs
    {
        "include",
        "src"
    }

    filter "system:windows"
        systemversion "latest"

    filter "configuration:Debug"
        runtime "Debug"
        symbols "on"

    filter "configuration:Release"
        runtime "Runtime"
        optimize "on"

    filter "configuration:Dist"
        runtime "Runtime"
        optimize "on"
