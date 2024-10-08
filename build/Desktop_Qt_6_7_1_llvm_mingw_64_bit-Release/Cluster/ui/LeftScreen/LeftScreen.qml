import QtQuick 2.15
import QtQuick.Controls
Rectangle{
    id:leftScreen
    anchors{
        right:rightscreen.left
        bottom:bottomBar.top
        top:parent.top
        left:parent.left
    }
    color:"white"
    Image {
        id: carr
        anchors.centerIn: parent
        width:parent.width * 1
        fillMode: Image.PreserveAspectFit
        source: "qrc:/Cluster/ui/assets/icon/carr.png"
    }
    Text{
        id:passtesla
        color:"black"
        anchors{
            right:leftScreen.right
            rightMargin: 50
            bottom:carr.bottom
            bottomMargin: 100
        }

        text:">>"
        font.pixelSize:50
        MouseArea{
            anchors.fill: parent
            onClicked: {
                carr.source="qrc:/Cluster/ui/assets/icon/tesla3.jpg"
                passtesla.visible=false
            }
        }
    }
    Rectangle{
        id:parking
        height:5
        width: 5
        color:"black"
        anchors{
            left:leftScreen.left
            right:leftScreen.right
            top:carr.top
            topMargin: -30
        }
    }
    Text{
        id:textparking
        anchors{
            horizontalCenter: parking.horizontalCenter
            top:leftScreen.top
            topMargin:-10
        }

        text:"P"
        font.pixelSize: 150
    }
    Image {
        id: battery
        width:parent.width *0.08
        anchors{
            top:leftScreen.top
            right:leftScreen.right
        }

        source: "qrc:/Cluster/ui/assets/icon/BMW.png"
    }
    Image {
        id: heat
        width:parent.width *0.06
        anchors{
            top:leftScreen.top
            right:battery.left
            rightMargin: 15
        }

        source: "qrc:/Cluster/ui/assets/icon/heating.png"
    }
    Image {
        id: energy
        width:parent.width*0.04
        anchors{
            bottom:leftScreen.bottom
            bottomMargin: 100
            left:leftScreen.left
            leftMargin: 300
        }
        source: "qrc:/Cluster/ui/assets/icon/microphone.png"
    }
    Image{
        id: lighting
        width:parent.width*0.1
        anchors{
            bottom:leftScreen.bottom
            bottomMargin: 100
            left:leftScreen.left
            leftMargin: 150
        }
        source: "qrc:/Cluster/ui/assets/icon/lighting.png"
    }


}
