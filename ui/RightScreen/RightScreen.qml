import QtQuick 2.15
import QtLocation
import QtPositioning
import QtQuick.Controls
Rectangle{
    id:rightscreen
    anchors{
        top:parent.top
        bottom: bottomBar.top
        right : parent.right
    }
    Plugin {
           id: mapPlugin
           name: "osm"
       }
       Map {
           id: map
           anchors.fill: parent
           plugin: mapPlugin
           center: QtPositioning.coordinate(36.80, 10.08) // Manouba
           zoomLevel: 14
           property geoCoordinate startCentroid

           PinchHandler {
               id: pinch
               target: null
               onActiveChanged: if (active) {
                   map.startCentroid = map.toCoordinate(pinch.centroid.position, false)
               }
               onScaleChanged: (delta) => {
                   map.zoomLevel += Math.log2(delta)
                   map.alignCoordinateToPoint(map.startCentroid, pinch.centroid.position)
               }
               onRotationChanged: (delta) => {
                   map.bearing -= delta
                   map.alignCoordinateToPoint(map.startCentroid, pinch.centroid.position)
               }
               grabPermissions: PointerHandler.TakeOverForbidden
           }
           WheelHandler {
               id: wheel
               // workaround for QTBUG-87646 / QTBUG-112394 / QTBUG-112432:
               // Magic Mouse pretends to be a trackpad but doesn't work with PinchHandler
               // and we don't yet distinguish mice and trackpads on Wayland either
               acceptedDevices: Qt.platform.pluginName === "cocoa" || Qt.platform.pluginName === "wayland"
                                ? PointerDevice.Mouse | PointerDevice.TouchPad
                                : PointerDevice.Mouse
               rotationScale: 1/120
               property: "zoomLevel"
           }
           DragHandler {
               id: drag
               target: null
               onTranslationChanged: (delta) => map.pan(-delta.x, -delta.y)
           }
           Shortcut {
               enabled: map.zoomLevel < map.maximumZoomLevel
               sequence: StandardKey.ZoomIn
               onActivated: map.zoomLevel = Math.round(map.zoomLevel + 1)
           }
           Shortcut {
               enabled: map.zoomLevel > map.minimumZoomLevel
               sequence: StandardKey.ZoomOut
               onActivated: map.zoomLevel = Math.round(map.zoomLevel - 1)
           }
       }
    width: parent.width*2 / 3
    Image {
        id: lockicon
        anchors{
            left:parent.left
            top:parent.top
            margins:5
        }
        width:parent.width/50
        fillMode:Image.PreserveAspectFit
        source:( systemHandler.lock ? "qrc:/Cluster/ui/assets/icon/lock.png" :  "qrc:/Cluster/ui/assets/icon/unlock.png")
        MouseArea{
            anchors.fill:parent
            onClicked: systemHandler.setlock(!systemHandler.lock)
        }
    }
    Text{
        id:timedate
        anchors{
            right:parent.right
            top:parent.top
            margins:5
        }
        font.pixelSize: 15
        font.bold:true
        color:"black"

        text: systemHandler.time
    }
    Text{
        id:temperatureMeasure
        anchors{
            left:lockicon.right
            top:parent.top
            margins:5
            leftMargin: 25
        }
        font.pixelSize: 15
        font.bold:true
        color:"black"

        text: systemHandler.dTemp + "°C"
    }
    Image {
        id: user
        anchors{
            left:temperatureMeasure.right
            top:parent.top
            margins:5
            leftMargin: 30
        }
        width:parent.width/50
        fillMode:Image.PreserveAspectFit
        source: "qrc:/Cluster/ui/assets/icon/smallcar.png"
        Rectangle {
                id: userPopup
                width: 250
                height: 150
                anchors {
                    top: user.bottom
                    left: user.left
                    leftMargin: 15
                    topMargin: 5
                }
                visible: false  // Initially hidden
                color: "#f0f0f0"
                border.color: "black"
                radius: 10

                Column {
                    anchors.centerIn: parent
                    spacing: 10

                    Text {
                        text: "Name: Hamza Amri"
                        font.pixelSize: 14
                    }

                    Text {
                        text: "Location: Manouba"
                        font.pixelSize: 14
                    }

                    Text {
                        text: "Phone: +216 12345678"
                        font.pixelSize: 14
                    }
                    Text {
                        text: "Email: +hamzaamri612@gmail.com"
                        font.pixelSize: 14
                    }
                }

            }
        MouseArea {
            anchors.fill: parent
            onClicked: userPopup.visible = !userPopup.visible// Hide popup when clicked
        }
    }
    Text{
        id:username
        anchors{
            left:user.right
            top:parent.top
            margins:5
        }
        font.pixelSize: 15
        font.bold:true
        color:"black"

        text: systemHandler.userName
    }
    MapNavigation{
        id:mapSearch
        width:parent.width * 1/4
        height:parent.height * 1/15
        anchors{
            left:lockicon.left
            top:lockicon.bottom
            topMargin: 20
        }
    }


    ListView {
           id: contactList
           width: rightscreen.width * 0.3  // Takes 30% of the parent width
           height: rightscreen.height * 0.4 // Adjust height as needed
           visible: false  // Hidden initially
           anchors.right: rightscreen.right  // Positioned at the right edge
           anchors.bottom: rightscreen.bottom  // Position bottom of ListView at the top of bottomBar
           topMargin:-100



           //anchors.horizontalCenter: parent.horizontalCenter // Center horizontally

           model: ListModel {
               ListElement { name: "Alice"; number: "+216 12345911" }  // French format
               ListElement { name: "Bob"; number: "+216 15887741" }    // French format
               ListElement { name: "Charlie"; number: "+216 02552265" } // French format
               ListElement { name: "Diana"; number: "+216 65236984" }   // French format
               ListElement { name: "Eve"; number: "+216 6 35789654" }     // New contact in French format
               ListElement { name: "Frank"; number: "+216 01254986" }   // New contact in French format
           }

           delegate: Item {
               width: contactList.width
               height: 60

               Rectangle {
                   width: parent.width
                   height: parent.height
                   color: "lightblue"
                   border.color: "black"

                   Column {
                       anchors.centerIn: parent

                       Text {
                           text: name
                           font.pointSize: 16
                       }

                       Text {
                           text: number  // Display the contact's number
                           font.pointSize: 14
                           color: "gray"
                       }
                   }
               }
           }
       }

       function toggleContacts() {
           contactList.visible = !contactList.visible;
       }
   }
