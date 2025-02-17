﻿import QtQuick 2.15

Item {
    id:root
    anchors.fill: parent
    anchors.margins: -4
    property color color: FluTheme.isDark ? "#FFFFFF" : "#000000"

    property int radius: 4

    Rectangle{
        width: root.width
        height: root.height
        anchors.centerIn: parent
        color: "#00000000"
        opacity: 0.02
        border.width: 1
        radius: root.radius
        border.color: root.color
    }

    Rectangle{
        width: root.width - 2
        height: root.height - 2
        anchors.centerIn: parent
        color: "#00000000"
        opacity: 0.04
        border.width: 1
        radius: root.radius
        border.color: root.color
    }
    Rectangle{
        width: root.width - 4
        height: root.height - 4
        anchors.centerIn: parent
        color: "#00000000"
        opacity: 0.06
        border.width: 1
        radius: root.radius
        border.color: root.color
    }

    Rectangle{
        width: root.width - 6
        height: root.height - 6
        anchors.centerIn: parent
        color: "#00000000"
        opacity: 0.08
        border.width: 1
        radius: root.radius
        border.color: root.color
    }

    Rectangle{
        width: root.width - 8
        height: root.height - 8
        anchors.centerIn: parent
        opacity: 0.1
        radius: root.radius
        color: "#00000000"
        border.width: 1
        border.color: root.color
    }

}
