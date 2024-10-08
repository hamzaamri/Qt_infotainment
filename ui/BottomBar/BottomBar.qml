import QtQuick 2.15
import QtQuick.Controls
Rectangle{
    id:bottomBar
    anchors{
        left:parent.left
        right: parent.right
        bottom: parent.bottom
    }
    color: "black"
    height: parent.height / 12
    Image{
        id:carsettingicon
        anchors{
            left:parent.left
            leftMargin: 30
            verticalCenter: parent.verticalCenter
        }
        height:parent.height * 0.8
        fillMode:Image.PreserveAspectFit
        source:"qrc:/Cluster/ui/assets/icon/Small_car.png"
    }

    Image{
        id:ventilationicon
        anchors.centerIn: parent
        height:parent.height * 0.5
        fillMode:Image.PreserveAspectFit
        source:"qrc:/Cluster/ui/assets/icon/ventilation.png"
    }
    Image{
        id:musicicon
        anchors{
            left:ventilationicon.right
            leftMargin: 45
            top:bottomBar.top
            topMargin: 17

        }

        height:parent.height * 0.5
        fillMode:Image.PreserveAspectFit
        source:"qrc:/Cluster/ui/assets/icon/music.png"
        MouseArea{
            anchors.fill:parent
            onClicked: {
                audios.visible=!audios.visible

            }
        }
    }

    Image{
        id:videoicon
        anchors{
            left:musicicon.right
            leftMargin: 45
            top:bottomBar.top
            topMargin: 17

        }
        height:parent.height * 0.5
        fillMode:Image.PreserveAspectFit
        source:"qrc:/Cluster/ui/assets/icon/play.png"
        MouseArea {
               anchors.fill: parent
               onClicked: {
                   videos.visible = !videos.visible
                   rightscreen.visible=! rightscreen.visible
               }
           }
    }
    Image{
        id:appelicon
        anchors{
            right:ventilationicon.left
            rightMargin: 45
            top:bottomBar.top
            topMargin: 17

        }
        height:parent.height * 0.5
        fillMode:Image.PreserveAspectFit
        source:"qrc:/Cluster/ui/assets/icon/telephone.png"
    }
    Image{
        id:contacticon
        anchors{
            right:appelicon.left
            rightMargin: 45
            top:bottomBar.top
            topMargin: 17

        }
        height:parent.height * 0.5
        fillMode:Image.PreserveAspectFit
        source:"qrc:/Cluster/ui/assets/icon/contact.png"
        MouseArea{
            anchors.fill:parent
            onClicked: {
                contact.visible=!contact.visible

            }
        }
    }
    Image{
        id:heatsystem
        anchors{
            right:contacticon.left
            rightMargin: 45
            top:bottomBar.top
            topMargin: 17

        }
        height:parent.height * 0.5
        fillMode:Image.PreserveAspectFit
        source:"qrc:/Cluster/ui/assets/icon/heat-system.png"
    }
    Image{
        id:ac
        anchors{
            right:heatsystem.left
            rightMargin: 45
            top:bottomBar.top
            topMargin: 17

        }
        height:parent.height * 0.5
        fillMode:Image.PreserveAspectFit
        source:"qrc:/Cluster/ui/assets/icon/AC.png"
    }
    Image{
        id:calendrier
        anchors{
            left:videoicon.right
            leftMargin: 45
            top:bottomBar.top
            topMargin: 17
        }
        height:parent.height * 0.5
        fillMode:Image.PreserveAspectFit
        source:"qrc:/Cluster/ui/assets/calendar.png"
    }
    HVACComp{
        id:driverHVACControl
        anchors{
            top:parent.top
            bottom:parent.bottom
            left:carsettingicon.right
            leftMargin: 50
        }
        hvaccontroller:driverHVAC
    }
    HVACComp{
        id:passengerHVACControl
        anchors{
            top:parent.top
            bottom:parent.bottom
            right:parent.right
            rightMargin: 150
        }
        hvaccontroller:passengerHVAC
    }
}
