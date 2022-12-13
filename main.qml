import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 480
    height: 800
    visible: true
    title: qsTr("APP Aaron")
    Text{
        x:240
        y:200
        text: "Buenos dias"
    }
    Text {
        x:240
        y:400
        text: "Buenas Tardes"
    }
    Rectangle{
        width: 240
        height: 200
        color: "#FF5832"
    }
}
