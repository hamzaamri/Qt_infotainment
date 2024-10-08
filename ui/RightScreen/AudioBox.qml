import QtQuick 2.15

Item{
 id:root
 required property int songIndex
 property alias title:titleText.text
 property alias authorName:authorText.text
 //property alias imageColor:albumImage.color
 property  alias imageSource: albumImage.source
visible:playerController.currentSongIndex===root.songIndex
Image {
     id:albumImage
     anchors{
         top:parent.top
         topMargin: -125
         left:parent.left
     }
     height:150
     width: 150
     }
 Text {
     id: titleText
     anchors{
         bottom:parent.verticalCenter
         left:albumImage.right
         margins:20
         right:parent.right
     }
     color:"white"
     wrapMode: Text.WrapAtWordBoundaryOrAnywhere
     font{
         pixelSize: 25
         bold:true
     }
 }
 Text {
     id: authorText
     anchors{
         bottom:titleText.top
         topMargin: 15
         left:albumImage.right
         leftMargin: 10
     }
     color:"white"
     wrapMode: Text.WrapAtWordBoundaryOrAnywhere
     font{
         pixelSize: 16
         bold:true

     }
 }
}
