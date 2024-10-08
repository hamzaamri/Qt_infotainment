import QtQuick 2.15
Item {
    property var  hvaccontroller

    Rectangle{
        id:decrementbutton
        anchors{
            left:parent.left
            top:parent.top
            bottom:parent.bottom
        }
        width:height/2
        color:"black"
        Text{
            id:decrementtext
            color:"#c5c9c5"
            anchors.centerIn: parent
            text:"<"
            font.pixelSize:30
        }
        MouseArea{
            anchors.fill:parent
            onClicked:hvaccontroller.incrementTemperature(-1)
        }
    }
    Text{
        id:temptext
        anchors{
            left:decrementbutton.right
            leftMargin: 10
            verticalCenter: parent.verticalCenter
        }
        color:"#c5c9c5"
        text:hvaccontroller.configureTemperature
        font.pixelSize:20
    }
    Rectangle{
        id:incrementtbutton
        anchors{
            left:temptext.right
            top:parent.top
            bottom:parent.bottom
            leftMargin: 10
        }
        width:height/2
        color:"black"
        Text{
            id:incrementtext
            color:"#c5c9c5"
            anchors.centerIn: parent
            text:">"
            font.pixelSize:30
        }
        MouseArea{
            anchors.fill:parent
            onClicked:hvaccontroller .incrementTemperature(1)
        }
    }

}
