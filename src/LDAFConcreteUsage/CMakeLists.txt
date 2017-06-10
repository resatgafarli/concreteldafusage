######################### General Settings ######################
cmake_minimum_required(VERSION 3.8.2)
######################## End Of General Settings ################
#################### External Projects Settings ########################
include(${CMAKE_ROOT}/Modules/ExternalProject.cmake)
# LDAF External Project Settings 
ExternalProject_Add(ldaf
  SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../../ldaf/src
  #BINARY_DIR ${OUTPUT_DIR}
  CMAKE_ARGS -DCMAKE_INSTALL_PREFIX:PATH=<INSTALL_DIR>
)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/../../ldaf/src/LDAF)

############################ Executable Project Settings #################### 
# Main Project Definition LDAF Source Code Inclusion
project(ldaf_concrete_usage)
set (SOURCES main.cpp)
add_executable(${PROJECT_NAME}  ${SOURCES} )
############################ End of Executable Project Settings ############# 

######################### Dependency And Link Settings ######################
add_dependencies(${PROJECT_NAME} ldaf)
target_link_libraries(${PROJECT_NAME}  libldaf.so)
######################### End of Dependency And Link Settings ###############