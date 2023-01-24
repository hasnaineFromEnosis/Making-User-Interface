import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Making UI")

    RowLayout {
            anchors.fill: parent
            spacing: 6
            Rectangle {
                color: 'green'
                Layout.preferredWidth: 100
                Layout.preferredHeight: 150
            }
            Rectangle {
                color: "red"
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
        }

//    RowLayout {
//        id: layout
//        anchors.fill: parent
//        spacing: 6
//        Rectangle {
//            color: 'azure'
//            Layout.fillWidth: true
//            Layout.minimumWidth: 50
//            Layout.preferredWidth: 100
//            Layout.maximumWidth: 300
//            Layout.minimumHeight: 150
//            Layout.maximumHeight: 400
//            Text {
//                anchors.centerIn: parent
//                text: parent.width + 'x' + parent.height
//            }
//        }
//        Rectangle {
//            color: 'plum'
//            Layout.fillWidth: true
//            Layout.minimumWidth: 100
//            Layout.preferredWidth: 200
//            Layout.preferredHeight: 100
//            Text {
//                anchors.centerIn: parent
//                text: parent.width + 'x' + parent.height
//            }
//        }
//    }
}
