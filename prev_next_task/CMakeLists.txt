cmake_minimum_required(VERSION 3.16)

project(prev_next_task VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(appprev_next_task
    main.cpp
)

qt_add_qml_module(appprev_next_task
    URI prev_next_task
    VERSION 1.0
    QML_FILES main.qml
    QML_FILES Page1.qml
    QML_FILES Page2.qml
    QML_FILES Page3.qml
    QML_FILES Page4.qml
    QML_FILES Page5.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appprev_next_task PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appprev_next_task
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appprev_next_task
    PRIVATE Qt6::Quick)

include(GNUInstallDirs)
install(TARGETS appprev_next_task
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
