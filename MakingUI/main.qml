import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Making UI")

    Item {
        width: 320; height: 170
        id: item1

        Column {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            spacing: 5

            Rectangle { color: "lightblue"; radius: 10.0
                        width: 300; height: 50
                        Text { anchors.centerIn: parent
                               font.pointSize: 24; text: "Books" } }
            Rectangle { color: "gold"; radius: 10.0
                        width: 300; height: 50
                        Text { anchors.centerIn: parent
                               font.pointSize: 24; text: "Music" } }
            Rectangle { color: "lightgreen"; radius: 10.0
                        width: 300; height: 50
                        Text { anchors.centerIn: parent
                               font.pointSize: 24; text: "Movies" } }
        }
    }

    Rectangle {
        anchors.top: item1.bottom
        width: 320; height: 110
        color: "#c0c0c0"
        id: rect1

        Row {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            spacing: 5

            Rectangle { width: 100; height: 100; radius: 20.0
                        color: "#024c1c" }
            Rectangle { width: 100; height: 100; radius: 20.0
                        color: "#42a51c" }
            Rectangle { width: 100; height: 100; radius: 20.0
                        color: "white" }
        }
    }

    Rectangle {
        anchors.top: rect1.bottom
        width: 300; height: 100
        color: "#303030"
        id: rect2

        Grid {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
//            columns: 3
            rows: 3
            spacing: 10

            Rectangle { color: "#aa6666"; width: 50; height: 50 }
            Rectangle { color: "#aaaa66"; width: 50; height: 50 }
            Rectangle { color: "#9999aa"; width: 50; height: 50 }
            Rectangle { color: "#6666aa"; width: 50; height: 50 }
        }
    }

    Rectangle {
        color: "lightblue"
        width: 100; height: 200
        anchors.left: item1.right
        clip: true

        Flow {
            anchors.fill: parent
            anchors.margins: 4
            spacing: 10

            Text { text: "Text"; font.pixelSize: 40 }
            Text { text: "items"; font.pixelSize: 40 }
            Text { text: "flowing"; font.pixelSize: 40 }
            Text { text: "inside"; font.pixelSize: 40 }
            Text { text: "a"; font.pixelSize: 40 }
            Text { text: "Flow"; font.pixelSize: 40 }
            Text { text: "item"; font.pixelSize: 40 }
        }
    }
}
