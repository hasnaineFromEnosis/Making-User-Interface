import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Making UI")

    Rectangle {
        width: 400; height: 400
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
}
