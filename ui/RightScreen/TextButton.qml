import QtQuick 2.15
Item {
    id:root
    property color color:"gray"
    property alias text :buttonText.text

    signal clicked()
    Rectangle{
        id:background
        anchors.fill:parent
        color:if (buttonMouseArea.containsPress){
                  return Qt.lighter(root.color)
              }else if (buttonMouseArea.containsMouse){
                  return Qt.darker(root.color)
              }else{
                  root.color
              }
    }
    Text{
        id:buttonText
        anchors.centerIn:parent

    }
    MouseArea{
        id:buttonMouseArea

        anchors.fill:parent
        hoverEnabled:true
        onClicked: {
            root.clicked()
        }
    }

}
