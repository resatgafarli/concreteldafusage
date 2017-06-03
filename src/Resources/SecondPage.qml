import QtQuick 2.6
import QtQuick.Controls 1.4

Item{
    TextArea {
        anchors.fill: parent
        width: 240
        text: "Second Page Dynamic Loaded"
        font.pointSize: 40
        horizontalAlignment: TextEdit.AlignHCenter
        verticalAlignment: TextEdit.AlignVCenter
    }
}
