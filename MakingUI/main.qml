import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Making UI")

    Rectangle {
        width: 200; height: 200
        border.color: "black"

        Rectangle {
            // Anchored to 20px off the top right corner of the parent

            id: rec1
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.margins: 20 // Sets all margins at once

            width: 100
            height: 100
            color: "orange"
        }

        Rectangle {
            // Anchored to 20px off the top center corner of the parent.
            // Notice the different group property syntax for 'anchors' compared to
            // the previous Rectangle. Both are valid.
            anchors { horizontalCenter: rec1.horizontalCenter; top: rec1.top; topMargin: 20 }

            width: 30
            height: 30
            color: "green"
        }
    }

    Item {
        width: 350; height: 100
        y:200
        clip: true
        id: rowItem

        Row { // The "Row" type lays out its child items in a horizontal line
            spacing: 20 // Places 20px of space between items

            Rectangle { width: 80; height: 80; color: "red" }
            Rectangle { width: 80; height: 180; color: "green" }
            Rectangle { width: 80; height: 80; color: "blue" }

            Rectangle { width: 80; height: 80; color: "red" }
            Rectangle { width: 80; height: 180; color: "green" }
            Rectangle { width: 80; height: 80; color: "blue" }

        }
    }

    GroupBox {
        id: gridBox
        title: "Grid layout"
        Layout.fillWidth: true
        anchors.top: rowItem.bottom
        anchors.margins: 0
        clip: true

        GridLayout {
            id: gridLayout
            rows: 3
            flow: GridLayout.TopToBottom
            anchors.fill: parent


            Label { text: "Line 1" }
            Label { text: "Line 2" }
            Label { text: "Line 3" }

            TextField { text: "firstone"}
            TextField { }
            TextField { }


            TextArea {
                text: "This widget spans over three rows in the GridLayout.\n"
                      + "All items in the GridLayout are implicitly positioned from top to bottom."
                Layout.rowSpan: 3
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
        }
    }
}
