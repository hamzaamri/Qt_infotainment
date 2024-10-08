import QtQuick 2.15
//import "ui/RightScreen"
Rectangle {
    id:videoo
    color:"white"
    anchors.centerIn: rightscreen
    Row {
        spacing: 10
        //anchors.centerIn: rightscreen
        Rectangle {
            color: "red"; width: 50; height: 50
        }
        Rectangle {
            color: "green"; width: 50; height: 50
        }
    }
}
