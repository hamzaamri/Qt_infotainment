import QtQuick
import QtMultimedia

Rectangle {
    id: videoo
    color: "white"
    anchors.fill:rightscreen

    Row {
        spacing: 10
        Rectangle {
            id:rec1
            width: 350
            height: 210
            color: "black"

             Video{
                id:vidoutput1
                source: "qrc:/Cluster/ui/video/ShortAnimated.avi"
                anchors.fill: parent
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {

                    vidoutput1.play()
                }
                onDoubleClicked: {vidoutput1.stop()}
            }
        }
        Rectangle {
            width: 350
            height: 210
            color: "black"
            Video {
                id:vidoutput2
                anchors.fill: parent
                source: "qrc:/Cluster/ui/video/laboratory.avi"
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    vidoutput2.play()
                }
                onDoubleClicked: {vidoutput2.stop()}
            }
        }
    }
}
