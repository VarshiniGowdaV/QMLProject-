cmake_minimum_required(VERSION 3.16)

project(InstanceofBugDemo)

set(CMAKE_CXX_STANDARD 17)

find_package(Qt6 REQUIRED COMPONENTS Core Gui Qml Quick QuickControls2)

qt_standard_project_setup()

# ✅ Rename the output executable to avoid conflict with folder name
qt_add_executable(instanceof_demo_app
    main.cpp
)

# ✅ Add QML files to module
qt_add_qml_module(instanceof_demo_app
    URI InstanceofBugDemo
    VERSION 1.0
    QML_FILES
        MyButton.qml
)

target_link_libraries(instanceof_demo_app
    PRIVATE
        Qt6::Core
        Qt6::Gui
        Qt6::Qml
        Qt6::Quick
        Qt6::QuickControls2
)
