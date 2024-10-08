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
    /*Rectangle{
     id:mainsection
     anchors{
         /*left:lockicon.left
         right:parent.right
         bottom:bottomBar.top
         top:mapSearch.bottom
         topMargin: 423
         top:parent.top
         topMargin: 510
         right:parent.right
         left:parent.left
         leftMargin: -10

     }

     height:150
     color:"#2b2a2a"

     AudioBox{
         id:firstsong
         anchors{
             left:mainsection.left
             right:mainsection.right
             bottom:mainsection.bottom
             bottomMargin: 25
         }
         songIndex: 0
         title: "Les Noces de Figaro"
         authorName: "Mozart "
         imageSource: "qrc:/Cluster/ui/assets/icon/mozart.png"
     }
     AudioBox{
         id:secondsong
         anchors{
             left:mainsection.left
             right:mainsection.right
             bottom:mainsection.bottom
             bottomMargin: 25
         }
         songIndex: 1
         title: "beethoven symphonie"
         authorName: "beethoven"
         imageSource: "qrc:/Cluster/ui/assets/icon/beethoven.png"
     }
     AudioBox{
         id:thirdsong
         anchors{
             left:mainsection.left
             right:mainsection.right
             bottom:mainsection.bottom
             bottomMargin: 25
         }
         songIndex: 2
         title: "Twelfth Street Rag"
         authorName: "louis armstrong"
         imageSource: "qrc:/Cluster/ui/assets/icon/louis.png"
     }


  }
    Row{
        anchors{
            right:mainsection.right
            top:mainsection.top
            topMargin: 50
            rightMargin: 30
        }

        spacing:20
    TextButton{
        id:previousButton
        width:50
        height:50
        text:"<"
        onClicked: playerController.switchtoprevioussong()
    }
    TextButton{
        id:pause
        width:50
        height:50
        text:playerController.playing?"pause":"play"
        onClicked: playerController.playpause()
    }
    TextButton{
        id:nextButton
        width:50
        height:50
        text:">"
        onClicked: playerController.switchtonextsong()
    }
    }
    QtObject{
        id:playerController
        property int currentSongIndex:0
        property int songCount:3
        property  bool playing: false

        function playpause(){
            playing=!playing
        }
        function switchtoprevioussong(){
            if(currentSongIndex>0){
                currentSongIndex--
            }
            else{
                currentSongIndex=songCount-1
            }
        }
        function switchtonextsong(){
            if(currentSongIndex+1>=songCount){
                currentSongIndex=0
            }
            else{
                currentSongIndex++
            }
        }
    }*/
}
