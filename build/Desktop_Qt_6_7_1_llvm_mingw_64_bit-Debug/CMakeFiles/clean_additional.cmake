# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appCluster_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appCluster_autogen.dir\\ParseCache.txt"
  "appCluster_autogen"
  )
endif()
