import QtQuick 2.6
import QtQuick.Controls 1.4

Item{
    id: firstPage


        SplitView {
            id: splitViewH
            anchors.fill: parent
            orientation: Qt.Horizontal
            TextArea {

                height: 300
                text: "First Page (Static Loaded)"
                font.pointSize: 40
                horizontalAlignment: TextEdit.AlignHCenter
                verticalAlignment: TextEdit.AlignVCenter
            }

            Loader{
                    width: 400
                    id: leftSideLoader
            }

            Loader {
                    width: 400
                    id: rightSideLoader
            }

        }




    Component.onCompleted: {
        ldafbrowser.openPage("SecondPage.qml",firstPage,"loadLeftSide")
        ldafbrowser.openPage("ThirdPage.qml",firstPage,"loadRightSide")
    }


    function loadLeftSide(url) {
        leftSideLoader.setSource(url)
    }
    function loadRightSide(url) {
        rightSideLoader.setSource(url)
    }

}
