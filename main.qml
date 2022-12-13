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
        color:"black"
        z:1
        Text {
            Layout.alignment: Qt.AlignCenter
            x: ((blackreg.width / 2)-(width/2))
            color: "#B3B3B3"
            text:"Calibration"
        }
        ColumnLayout{
            y:20
        Button{
            id: axes
            text: qsTr("Button")

            contentItem: Text {
                text: axes.text
                font: axes.font
                opacity: enabled ? 1.0 : 0.3
                color: "#B3B3B3"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }

            background: Rectangle {
                color: "transparent"
                border.width: 1

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
                text: axes.text
                font: axes.font
                opacity: enabled ? 1.0 : 0.3
                color: "#B3B3B3"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }
            background: Rectangle {
                color: "gray"
                border.width: 1
            }
        }

       }

        ItemDelegate{

        }


    }

}
