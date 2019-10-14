import QtQuick 2.13
import QtQuick.Controls 2.13
import QtWebEngine 1.9

Item {
    anchors.fill: parent

    property string title: view.title

    WebEngineView {

        id: view
        url: "https://www.youtube.com"
        anchors.fill: parent
        settings.fullScreenSupportEnabled: true
    }

    ProgressBar {
        indeterminate: !view.loadProgress;
        visible: indeterminate
        anchors.centerIn:  parent
    }

}

