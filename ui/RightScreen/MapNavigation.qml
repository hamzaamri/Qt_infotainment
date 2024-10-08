import QtQuick 2.15
Rectangle {
    id:mapsearch
    radius:6
    color:"#f7fcf7"
    Image{
        id:searchicon
        anchors
        {
            left:mapsearch.left
            top:mapsearch.top
            topMargin:10
            leftMargin:5
        }
        fillMode:Image.PreserveAspectFit
        height:parent.height * .5
        source: "qrc:/Cluster/ui/assets/icon/small.png"
    }
    Text {
        id: textsearch
        visible: textinputmaps.text ===""
        text: qsTr("Navigate")
        color:"#c5c9c5"
        anchors{
            left:searchicon.right
            top:mapsearch.top
            topMargin:12
            leftMargin:15
        }
    }
    TextInput {
        id: textinputmaps
        anchors{
            left:searchicon.right
            top:mapsearch.top
            bottom:parent.bottom
            right:parent.right
            leftMargin:15
        }
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 14
        cursorVisible: true

    }
}
