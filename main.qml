import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.14

Window {
    id: window1
    width: 480
    height: 800
    visible: true
    title: qsTr("APP Aaron")

    Rectangle{
        id:blackreg
        width: window1.width
        height: window1.height
        color:"#1c2833"
        z:1


        Text {
            id: cali
            Layout.alignment: Qt.AlignCenter
            x: ((blackreg.width / 2)-(width/2))
            color: "#B3B3B3"
            text:"Calibration"
            scale: 3
            height:-10

            Button{
                x:-40
                background: Rectangle
                {
                color: "transparent"

                Image {
                    id: img
                    source: "https://cdn.pixabay.com/photo/2012/04/05/01/56/arrow-25834_960_720.png"
                    width: 15
                    height: 10
                   }
               }

            }
        }
        ColumnLayout{
            spacing:50
            anchors.left: blackreg.left
            anchors.leftMargin:80
            anchors.top: blackreg.top
            anchors.topMargin: 100
        Button{
            id: axes
            text: qsTr("Axes autocalibration")
            contentItem: Text {
                text: axes.text
                font: axes.font
                color: "white"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
                scale:1.5


            }

            background: Rectangle {
                id: line
                color: "transparent"

                Rectangle{
                    width: window1.width
                    height: 1
                    color: "gray"
                    anchors.bottom: parent.bottom
                }
            }
        }


        Button{
            contentItem: Text {
                text: "Manual offset adjustment"
                font: axes.font
                opacity: enabled ? 1.0 : 0.3
                color: "white"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
                scale:1.5
            }

            background: Rectangle {
            color: "transparent"

            Rectangle{
                width: window1.width
                height: 1
                color: "gray"
                anchors.bottom: parent.bottom
            }

          }
       }

        Button{
            contentItem: Text {
                text: "Mesh mapping"
                font: axes.font
                opacity: enabled ? 1.0 : 0.3
                color: "white"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
                scale:1.5
            }

            background: Rectangle {
            color: "transparent"

            Rectangle{
                width: window1.width
                height: 1
                color: "gray"
                anchors.bottom: parent.bottom
            }

          }
       }


  }
}
    Rectangle{
    color: "#212f3d"
    height: 70
    width: window1.width
    z:1
    y:window1.height -70

    Rectangle{
        height: 30
        width: 30
        color: "transparent"
        Image {
            source: ".img/home.png"
            width: 100
            height: 100
        }

    }
}
}
