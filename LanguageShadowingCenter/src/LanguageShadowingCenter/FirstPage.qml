import QtQuick 2.6
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    objectName: "applicationWindow"

    Action {
        id: secondPageAction
        text: "&Go to Second Page"
        shortcut: StandardKey.Copy
        //iconName: ""
        enabled: true
        onTriggered: {
			var nextPath = "SecondPage"
			ldafbrowser.openPage(nextPath)
		}
    }

    toolBar: ToolBar {
           RowLayout {
               anchors.fill: parent
               ToolButton { action: secondPageAction}
           }
       }
       menuBar: MenuBar {
           Menu {
               title: "&File"
               MenuItem { action: secondPageAction }
           }
       }
}
