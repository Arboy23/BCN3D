import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.14
import QtQuick.Controls.Styles 1.4

Page {
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
            color: "#4C5156"
            text:"Calibration"
            scale: 2
            height:-50
            Text{
            scale:0.5
            color: "white"
            anchors.left:cali.left
            anchors.leftMargin: 100
            text:obj.returnIP()
            }

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

            CustomButton{
            buttonText: "Axes autocalibration"
            buttonids: "qrc:/Axes_Autocalibration.qml"
            }


            CustomButton{
                buttonText: "Manual offset adjustment"
                buttonids: "qrc:/Manual_Offset_Adjustment.qml"
            }

            CustomButton{
                buttonText: "Mesh mapping"
                buttonids: "qrc:/Mesh_Mapping.qml"
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
}
