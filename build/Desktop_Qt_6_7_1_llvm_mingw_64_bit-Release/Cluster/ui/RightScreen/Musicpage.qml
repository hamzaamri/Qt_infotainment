import QtQuick 2.15

Rectangle{
 id:mainsection
 anchors{
     /*left:lockicon.left
     right:parent.right
     bottom:bottomBar.top
     top:mapSearch.bottom
     topMargin: 423*/
     top:parent.top
     topMargin: 510
     right:parent.right
     left:rightscreen.left
     bottom:bottomBar.top
     //leftMargin: 450
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
}
}
