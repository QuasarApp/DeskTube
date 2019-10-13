import QtQuick 2.13
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.13

ApplicationWindow {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Stack")

    visibility: Qt.WindowFullScreen // << the solution

    Connections {
        target: settings

        onValueChanged: {

            const _key = key;
            const _val = Boolean(value);

            if (_key === "fullscrean") {
                if (_val) {
                    window.showFullScreen();
                } else {
                    window.showNormal();
                }
            }

        }
    }

    Component.onCompleted:  {
        const val2 = settings.getValue("fullscrean", false)

        const val = Boolean(val2) || val2 !== "false"
        if (val) {
            window.showFullScreen();
        } else {
            window.showNormal();
        }
    }

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
                    stackView.push("Settings.qml")
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
                    Qt.quit();
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
