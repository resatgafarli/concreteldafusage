######################### General Settings ######################
cmake_minimum_required(VERSION 3.8.2)
######################## End Of General Settings ################

################## Qt  Settings #################################
set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} ${QT_DIR}})
#################### External Projects Settings ########################
include(${CMAKE_ROOT}/Modules/ExternalProject.cmake)
# LDAF External Project Settings   
ExternalProject_Add(ldaf
  GIT_REPOSITORY https://github.com/resatgafarli/ldaf
  GIT_TAG unittesting
  PREFIX ${CMAKE_CURRENT_SOURCE_DIR}/../ldaf
  CMAKE_ARGS -DCMAKE_INSTALL_PREFIX:PATH=<INSTALL_DIR>
)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/../ldaf/include)
link_directories (${CMAKE_CURRENT_SOURCE_DIR}/../ldaf/lib)

############################ Executable Project Settings #################### 
project(ldaf_concrete_usage)
set (CONCRETE_SOURCES main.cpp)
add_executable(${PROJECT_NAME} ${CONCRETE_SOURCES})
############################ End of Executable Project Settings ############# 
######################### Dependency And Link Settings ######################
# Qt Link
find_package(Qt5Core REQUIRED)
target_link_libraries(${PROJECT_NAME} Qt5::Core)

# Ldaf dependency
add_dependencies(${PROJECT_NAME} ldaf)
target_link_libraries(${PROJECT_NAME}  libldaf.so)
######################### End of Dependency And Link Settings ###############