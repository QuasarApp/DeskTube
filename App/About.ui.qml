import QtQuick 2.13
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.3

Page {
    width: 600
    height: 400

    property string version: "1.0"

    title: qsTr("About")
    anchors.fill: parent


    GridLayout {
        id: gridLayout
        columns: 1
        anchors.fill: parent

        Image {
            id: image
            width: 857
            height: 355
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillWidth: true
            Layout.fillHeight: true
            fillMode: Image.PreserveAspectFit
            source: "qrc:/img/redLogo"
        }

        Text {
            id: description
            text: qsTr("DeskTube - youtube desktop application. Provides all the basic functionality of YouTube.")
            wrapMode: Text.WordWrap
            Layout.fillHeight: false
            Layout.fillWidth: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }

        Text {
            id: version
            text: qsTr("Version: ") + version
            Layout.fillWidth: true
            Layout.fillHeight: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }

        Text {
            id: links
            text: qsTr("
#
# Copyright (C) 2018-2019 QuasarApp (https://github.com/QuasarApp/DeskTube).
# Distributed under the gplv3 software license, see the accompanying
# Everyone is permitted to copy and distribute verbatim copies
# of this license document, but changing it is not allowed.
#")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }
}
