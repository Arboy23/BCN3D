import QtQuick 2.14
import QtQuick.Controls 2.14

Button{
    property string buttonText: "pepe"
    property string buttonids: "id"

    onClicked:{
            stack.push(buttonids)
        console.log(obj.funcionDebug())
    }

    contentItem: Text {
        id:manualtext
        text: buttonText
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

