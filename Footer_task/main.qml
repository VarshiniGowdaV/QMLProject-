import QtQuick
import QtQuick.Controls
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle
    {
        id:rect
        width:640
        height: 50
        color: "black"
        anchors.bottom:parent.bottom

        Button
        {
            id:b1
            text: "b1"
        }
        Button
        {
            id:b2
            text: "b2"
        }
        Button
        {
            id:b3
            text: "b3"
        }
        Button
        {
            id:b4
            text: "b4"
        }
        Button
        {
            id:b5
            text: "b5"
        }
    }
}
