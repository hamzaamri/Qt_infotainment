cmake_minimum_required(VERSION 3.16)

project(Cluster VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appCluster
    main.cpp
)

qt_add_qml_module(appCluster
    URI Cluster
    VERSION 1.0
    QML_FILES
        Main.qml
        QML_FILES ui/BottomBar/BottomBar.qml
        QML_FILES ui/RightScreen/RightScreen.qml
        QML_FILES ui/LeftScreen/LeftScreen.qml

        SOURCES
        SOURCES optionscontroller/system.h optionscontroller/system.cpp
        QML_FILES ui/RightScreen/MapNavigation.qml
        SOURCES optionscontroller/hvachandler.h optionscontroller/hvachandler.cpp
        QML_FILES ui/BottomBar/HVACComp.qml
        QML_FILES
        QML_FILES ui/RightScreen/AudioBox.qml
        QML_FILES ui/RightScreen/TextButton.qml
        RESOURCES
        QML_FILES
        QML_FILES ui/BottomBar/Videopage.qml
        RESOURCES ui/assets/icon/AC.png
        RESOURCES  ui/assets/icon/beethoven.png ui/assets/icon/BMW.jpg ui/assets/icon/BMW.png ui/assets/icon/bwm.jpg ui/assets/icon/carr.png ui/assets/icon/contact.png ui/assets/icon/heat-system.png ui/assets/icon/lighting.png ui/assets/icon/lock.png ui/assets/icon/louis.png ui/assets/icon/microphone.png ui/assets/icon/mozart.png ui/assets/icon/music.png ui/assets/icon/play.png ui/assets/icon/Small_car.png ui/assets/icon/smallcar.png ui/assets/icon/telephone.png ui/assets/icon/tesla3.jpg ui/assets/icon/unlock.png ui/assets/icon/ventilation.png
        RESOURCES ui/assets/icon/small.png
        RESOURCES ui/video/laboratory.avi ui/video/ShortAnimated.avi
        QML_FILES
        QML_FILES
        QML_FILES ui/RightScreen/Musicpage.qml
        RESOURCES
        RESOURCES ui/assets/icon/heating.png
        QML_FILES
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appCluster PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appCluster
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appCluster
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appCluster
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
