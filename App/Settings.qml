import QtQuick 2.13
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.3

Page {
    width: 470
    height: 480

    title: qsTr("Settings");


    GridLayout {

        Label {
            text: qsTr("Use full screen mode")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillHeight: false
            Layout.fillWidth: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }

        CheckBox {
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter

            checked: window.fool

            onCheckedChanged: {
                settings.setValue("fullscrean", checked);

            }
        }
    }

}
