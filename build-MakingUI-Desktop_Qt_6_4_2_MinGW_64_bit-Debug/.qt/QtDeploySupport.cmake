cmake_minimum_required(VERSION 3.16...3.21)

# These are part of the public API. Projects should use them to provide a
# consistent set of prefix-relative destinations.
if(NOT QT_DEPLOY_BIN_DIR)
    set(QT_DEPLOY_BIN_DIR "bin")
endif()
if(NOT QT_DEPLOY_LIB_DIR)
    set(QT_DEPLOY_LIB_DIR "lib")
endif()
if(NOT QT_DEPLOY_PLUGINS_DIR)
    set(QT_DEPLOY_PLUGINS_DIR "plugins")
endif()
if(NOT QT_DEPLOY_QML_DIR)
    set(QT_DEPLOY_QML_DIR "qml")
endif()
if(NOT QT_DEPLOY_PREFIX)
    set(QT_DEPLOY_PREFIX "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
endif()
if(QT_DEPLOY_PREFIX STREQUAL "")
    set(QT_DEPLOY_PREFIX .)
endif()

# These are internal implementation details. They may be removed at any time.
set(__QT_DEPLOY_SYSTEM_NAME "Windows")
set(__QT_DEPLOY_IS_SHARED_LIBS_BUILD "ON")
set(__QT_DEPLOY_TOOL "C:/Qt/6.4.2/mingw_64/bin/windeployqt.exe")
set(__QT_DEPLOY_IMPL_DIR "C:/Users/hasnaine/Documents/QT Practice/Making User Interface/build-MakingUI-Desktop_Qt_6_4_2_MinGW_64_bit-Debug/.qt")
set(__QT_DEPLOY_VERBOSE "")
set(__QT_CMAKE_EXPORT_NAMESPACE "Qt6")
set(__QT_DEPLOY_GENERATOR_IS_MULTI_CONFIG "0")
set(__QT_DEPLOY_ACTIVE_CONFIG "Debug")
set(__QT_NO_CREATE_VERSIONLESS_FUNCTIONS "")
set(__QT_DEFAULT_MAJOR_VERSION "6")

# Define the CMake commands to be made available during deployment.
set(__qt_deploy_support_files
    "C:/Qt/6.4.2/mingw_64/lib/cmake/Qt6Core/Qt6CoreDeploySupport.cmake"
    "C:/Qt/6.4.2/mingw_64/lib/cmake/Qt6Qml/Qt6QmlDeploySupport.cmake"
)
foreach(__qt_deploy_support_file IN LISTS __qt_deploy_support_files)
    include("${__qt_deploy_support_file}")
endforeach()

unset(__qt_deploy_support_file)
unset(__qt_deploy_support_files)
