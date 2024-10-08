import QtQuick
import QtQuick.VirtualKeyboard

import "ui/BottomBar"
import "ui/RightScreen"
import "ui/LeftScreen"
Window {
    id: window
    width: 1280
    height: 720
    visible: true
    title: qsTr("Infotainment")
    BottomBar{
        id:bottomBar
    }
    RightScreen{
        id:rightscreen
    }
    LeftScreen{
        id:leftScreen
    }
    Videopage{
        id:videos
        visible:false
    }
   Musicpage{
        id:audios
        visible:false
    }
}
