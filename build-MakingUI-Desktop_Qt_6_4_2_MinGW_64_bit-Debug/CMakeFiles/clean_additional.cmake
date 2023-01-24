# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\MakingUI_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\MakingUI_autogen.dir\\ParseCache.txt"
  "MakingUI_autogen"
  )
endif()
