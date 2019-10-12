import QtQuick 2.13
import QtQuick.Controls 2.13
import QtWebEngine 1.9

Page {
    width: 600
    height: 400

    title: qsTr("YouTube")

    WebEngineView {
        url: "https://www.youtube.com"
    }
}
