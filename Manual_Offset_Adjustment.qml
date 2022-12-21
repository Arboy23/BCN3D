import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.14

Page {

    Rectangle{
        id:blackreg
        width: window1.width
        height: window1.height
        color:"#1c2833"
        z:1


        Text {
            id: princiaxestxt
            Layout.alignment: Qt.AlignCenter
            x: ((blackreg.width / 2)-(width/2))
            color: "#4C5156"
            text:"Offset adjustment"
            scale: 2
            height:-50

            Button{
                onClicked: stack.push(mainView)
                x: blackreg.x-40
                y:3
                background: Rectangle
                    {
                color: "transparent"

                    Image {
                        id: img
                        source: "qrc:/img/arrow.png"
                        width: 15
                        height: 15
                    }
                }
            }
        }

        Image {
            anchors.top: blackreg.top
            anchors.topMargin: window1.height -820
            x:((blackreg.width / 2)-(width/2))
            source: "qrc:/img/Manual-img/warning.png"
            scale:0.2
            Text {
                anchors.top: parent.top
                anchors.topMargin: 600
                horizontalAlignment: Text.AlignHCenter
                x:((blackreg.width / 2)-(width/2))
                text: "This is for advanced users only."
                color: "white"
                scale:9
            }

        }


        Text {
            anchors.top: blackreg.top
            anchors.topMargin: window1.height -400
            horizontalAlignment: Text.AlignHCenter
            text: "Adjust distance between parys at\nyour home position.\n\nAfter an axes calibration,fine-tune\nthe calibration offsets for the nozzle\nposition if needed."
            x:((blackreg.width / 2)-(width/2))
            scale:1.6
            color:"#A2A4A5"
        }

        Button{
            anchors.left:blackreg.left
            anchors.leftMargin: 20
            anchors.right: blackreg.right
            anchors.rightMargin: 20
            anchors.top: blackreg.top
            anchors.topMargin: window1.height -85
            background:Rectangle{
                id:regwhite
                border.color: "#B3B3B3"
                radius:5
                Text {
                    x:((regwhite.width / 2)-(width/2))
                    anchors.top: regwhite.top
                    anchors.topMargin: ((regwhite.height / 2)-(height/2))
                    text: "Continue"
                    scale:1.7
                }

                width: blackreg.x
                height: 60

                color: "white"
            }
        }
    }

}
