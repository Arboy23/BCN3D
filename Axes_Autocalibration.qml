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


        Text {
            id: princiaxestxt
            Layout.alignment: Qt.AlignCenter
            x: ((blackreg.width / 2)-(width/2))
            color: "#4C5156"
            text:"Axes autocalibration"
            scale: 2
            height:-50

            Button{
                onClicked: stack.push(mainView)
                x: blackreg.x-35
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
            anchors.topMargin: window1.height -750
            x:((blackreg.width / 2)-(width/2))
            source: "qrc:/img/Axes-img/object.png"
            scale:0.5

        }


        Text{
            text: "This process will calibrate the nozzle\npositions. It's recommended to\ncalibrate these positions frequently\nand after any transportation"
            anchors.top: blackreg.top
            anchors.topMargin: window1.height -300
            horizontalAlignment: Text.AlignHCenter
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
                    text: "Start"
                    scale:1.7
                }

                width: blackreg.x
                height: 60

                color: "white"
            }
        }
    }
}
