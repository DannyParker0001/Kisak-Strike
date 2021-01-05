include("${CMAKE_MODULE_PATH}/common_functions.cmake")
include("${CMAKE_MODULE_PATH}/platform_dirs.cmake") #defines PLATSUBDIR
include("${CMAKE_MODULE_PATH}/source_base.cmake")


add_definitions(-DCSTRIKE15)

if(POSIX)
    MacroRequired(OUTDLLEXT ".so")
    include("${CMAKE_MODULE_PATH}/source_dll_posix_base.cmake")
elseif(WINDOWS)
    #message(FATAL_ERROR "Cmake Windows Unsupported!")
    MacroRequired(OUTDLLEXT ".dll")
    include("${CMAKE_MODULE_PATH}/source_dll_posix_base.cmake")
elseif(X360)
    message(FATAL_ERROR "Cmake X360 Unsupported!")
elseif(PS3)
    message(FATAL_ERROR "Cmake PS3 Unsupported!")
endif()

include("${CMAKE_MODULE_PATH}/source_video_base.cmake")