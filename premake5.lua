-- premake5.lua
workspace "RayTracingLearning"
   architecture "x64"
   configurations { "Debug", "Release", "Dist" }
   startproject "RayTracingLearning"

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"
include "Walnut/WalnutExternal.lua"

include "RayTracingLearning"