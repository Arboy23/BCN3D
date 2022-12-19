import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.14
import QtQuick.Controls.Styles 1.4
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
            scale: 2
            height:-50

            Button{
                x: blackreg.x-60
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
        ColumnLayout{
            spacing:100
            anchors.left: blackreg.left
            anchors.leftMargin:80
            anchors.top: blackreg.top
            anchors.topMargin: 130
        Button{
<<<<<<< HEAD
            onClicked: Axes_Autocalibration.ac
=======
            //Button.action: AxesAutocalibration.set
>>>>>>> 534d9b80997f11a61655e3e75511454842689148
            id: axes
            text: qsTr("Axes autocalibration")

            contentItem: Text {
                id:axestext
                text: axes.text
                font: axes.font
                color: "white"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
                scale:1.5


            }

            background: Rectangle {
                id:posrec
                color: "transparent"
                anchors.left: axestext.left
                anchors.leftMargin: -35
                anchors.top: axestext.top
                anchors.topMargin: 60

                Rectangle{
                    width: window1.width
                    height: 1
                    color: "gray"
        }
    }
}


        Button{
            id:manual
            anchors.left: axes.left
            anchors.leftMargin:axestext.x

            contentItem: Text {
                id:manualtext
                text: "Manual offset adjustment"
                opacity: enabled ? 1.0 : 0.3
                color: "white"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
                scale:1.5
            }

            background: Rectangle {
            color: "transparent"
            anchors.left: manual.left
            anchors.leftMargin: -35
            anchors.top: manualtext.top
            anchors.topMargin: 60

            Rectangle{
                width: window1.width
                height: 1
                color: "gray"
                anchors.bottom: parent.bottom
        }
    }
}

        Button{
            id:mesh
            anchors.left: axes.left
            anchors.leftMargin:axestext.x
            contentItem: Text {
                id:meshtext
                text: "Mesh mapping"
                opacity: enabled ? 1.0 : 0.3
                color: "white"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
                scale:1.5
                x:-manual.x
            }

            background: Rectangle {
            color: "transparent"
            anchors.left: mesh.left
            anchors.leftMargin: -35
            anchors.top: meshtext.top
            anchors.topMargin: 60

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
    id: reclow
    color: "#212f3d"
    height: 70
    width: window1.width
    z:1
    y:window1.height -70
}

    RowLayout{
        anchors.left: blackreg.left
        anchors.leftMargin: 30
        anchors.top: reclow.top
        anchors.topMargin: 20
        width: window1.width
        z:1
        y:window1.height -70

        Button{
            background: Rectangle{color: "transparent"}
            Rectangle{
                height: 30
                width: 30
                color: "transparent"
                Image {
                    source: "qrc:/img/home.png"
                    width: 30
                    height: 30
                    anchors.centerIn: parent
             }
         }
    }

        Button{
            background: Rectangle{color: "transparent"}
            Rectangle{
                height: 30
                width: 30
                color: "transparent"
                Image {
                    source: "qrc:/img/check.png"
                    width: 30
                    height: 30
                    anchors.centerIn: parent
             }
         }
    }

           Button{
                background: Rectangle{color: "transparent"}
            Rectangle{
                height: 30
                width: 30
                color: "transparent"
                Image {
                    source: "qrc:/img/printer.png"
                    width: 30
                    height: 30
                    anchors.centerIn: parent
             }
         }
    }
                   Button{
                       background: Rectangle{color: "transparent"}
            Rectangle{
                height: 30
                width: 30
                color: "transparent"
                Image {
                    source: "qrc:/img/setting.png"
                    width: 30
                    height: 30
                    anchors.centerIn: parent
                }
            }
        }
    }

   /*StackView{
      id: stack
      initialItem: cali
   }*/
}
