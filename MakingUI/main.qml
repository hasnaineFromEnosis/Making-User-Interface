import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Making UI")

    Rectangle {
        width: 50
        height: 50
        anchors.left: parent.left
        color: "red"

        MouseArea {
            anchors.fill: parent
            onClicked: parent.reanchorToRight()
        }

        function reanchorToRight() {
            anchors.left = undefined
            anchors.right = parent.right
        }
    }

    Rectangle {
        y:60
        //bad code
        Item {
            id: group1
            Rectangle {
                id: rect1
                width: 50
                height: 50
                color: "blue" }
        }
        Item {
            id: group2

            width: 200
            Rectangle {
                id: rect2;
                anchors.left: rect1.right;
                width: 50
                height: 50
                color: "green"

                MouseArea {
                    anchors.fill: parent
                    onClicked: parent.reanchorToRight()
                }

                function reanchorToRight() {
                    anchors.left = undefined
                    anchors.right = parent.right
                }
            }    // invalid anchor!
        }
    }
}
