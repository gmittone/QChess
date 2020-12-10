import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 512
    height: 640
    minimumWidth: width
    minimumHeight: height
    maximumWidth: width
    maximumHeight: height
    visible: true
    title: qsTr("QChess")

    Item {
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        height: 512

        Image {
            id: image
            source: "qrc:/images/board.png"
            anchors.bottom: parent.bottom
            anchors.left: parent.left
        }

        Image {
            source: "qrc:/images/pieces.png"
            sourceSize: Qt.size(384, 128)
            sourceClipRect: Qt.rect(0, 0, 64, 64)
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0

            Rectangle {
                anchors.fill: parent
                border.color: "red"
                border.width: 1
                color: "transparent"
            }
        }
    }
}
