import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: "All QML Components"

    Rectangle {
        anchors.fill: parent
        color: "white"

        ScrollView {
            anchors.fill: parent

            ColumnLayout {
                anchors.margins: 20
                spacing: 20
                width: parent.width

                // App Title
                Text {
                    text: "All QML Components Output"
                    font.pixelSize: 24
                    font.bold: true
                    color: "black"
                    horizontalAlignment: Text.AlignHCenter
                    Layout.alignment: Qt.AlignHCenter
                }

                // 1. Rectangle
                Text {
                    text: "1. Rectangle"
                    font.pixelSize: 18
                    font.bold: true
                    color: "black"
                }
                Item {
                    width: 200
                    height: 100
                    Rectangle {
                        anchors.fill: parent
                        color: "lightblue"
                        border.color: "black"
                        border.width: 2
                    }
                }

                // 2. Button
                Text {
                    text: "2. Button"
                    font.pixelSize: 18
                    font.bold: true
                    color: "black"
                }
                Button {
                    text: "Click Me"
                    onClicked: console.log("Button clicked!")
                }

                // 3. TextField
                Text {
                    text: "3. TextField"
                    font.pixelSize: 18
                    font.bold: true
                    color: "black"
                }
                TextField {
                    placeholderText: "Enter your name"
                    font.pointSize: 16
                    width: 300
                }

                // 4. TextEdit
                Text {
                    text: "4. TextEdit"
                    font.pixelSize: 18
                    font.bold: true
                    color: "black"
                }
                TextEdit {
                    width: 300
                    height: 100
                    wrapMode: TextEdit.Wrap
                    text: "Type multi-line text here..."
                }

                // 5. Text
                Text {
                    text: "5. Text"
                    font.pixelSize: 18
                    font.bold: true
                    color: "black"
                }
                Text {
                    text: "This is a sample text"
                    font.pointSize: 18
                    color: "darkblue"
                }

                // 6. Image
                Text {
                    text: "6. Image"
                    font.pixelSize: 18
                    font.bold: true
                    color: "black"
                }
                Image {
                    source: "https://placedog.net/400/300?id=5"
                    width: 200
                    height: 150
                    fillMode: Image.PreserveAspectFit
                }

                // 7. Radio Buttons
                Text {
                    text: "7. Radio Buttons"
                    font.pixelSize: 18
                    font.bold: true
                    color: "black"
                }
                Column {
                    spacing: 5
                    RadioButton { text: "Option A" }
                    RadioButton { text: "Option B" }
                }

                // 8. Slider
                Text {
                    text: "8. Slider"
                    font.pixelSize: 18
                    font.bold: true
                    color: "black"
                }
                Column {
                    spacing: 5
                    Slider {
                        id: slider
                        width: 200
                        from: 0
                        to: 100
                    }
                    Text {
                        text: "Slider Value: " + Math.round(slider.value)
                    }
                }
            }
        }
    }
}
