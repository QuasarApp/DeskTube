import QtQuick 2.13
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.13

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Stack")

    header: ToolBar {

        RowLayout {
            ToolButton {
                text: qsTr("<<")
                onClicked: {
                    stackView.pop()
                }

                visible: stackView.depth > 1
            }

            ToolButton {
                text: qsTr("Settings")
                onClicked: {
                    stackView.push("About.ui.qml")
                }

                visible: stackView.depth == 1

            }

            ToolButton {
                text: qsTr("About")
                onClicked: {
                    stackView.push("About.ui.qml")
                }
                visible: stackView.depth == 1

            }

            ToolButton {
                text: qsTr("Exit")
                onClicked: {
                    stackView.push("About.ui.qml")
                }

                visible: stackView.depth == 1

            }

            Label {
                text: stackView.currentItem.title
            }
        }

    }

    StackView {
        id: stackView
        initialItem: "WebView.qml"
        anchors.fill: parent
    }
}
