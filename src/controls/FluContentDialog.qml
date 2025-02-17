﻿import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15

Popup {
    id: popup

    property string title: "Title"
    property string message: "Messaeg"
    property string negativeText: "Negative"
    property string positiveText: "Positive"
    signal negativeClicked
    signal positiveClicked

    property var minWidth: {
        if(Window.window==null)
            return 400
        return  Math.min(Window.window.width,400)
    }

    modal:true
    anchors.centerIn: Overlay.overlay
    closePolicy: Popup.CloseOnEscape
    background: Rectangle {
        id:layout_content
        implicitWidth:minWidth
        implicitHeight: text_title.height + text_message.height + layout_actions.height
        color:FluTheme.isDark ? Qt.rgba(45/255,45/255,45/255,1) : Qt.rgba(249/255,249/255,249/255,1)
        radius:5

        FluShadow{
            radius: 5
        }

        FluText{
            id:text_title
            fontStyle: FluText.TitleLarge
            text:title
            topPadding: 20
            leftPadding: 20
            rightPadding: 20
            wrapMode: Text.WrapAnywhere
            anchors{
                top:parent.top
                left: parent.left
                right: parent.right
            }
        }

        FluText{
            id:text_message
            fontStyle: FluText.Body
            wrapMode: Text.WrapAnywhere
            text:message
            topPadding: 14
            leftPadding: 20
            rightPadding: 20
            bottomPadding: 14
            anchors{
                top:text_title.bottom
                left: parent.left
                right: parent.right
            }
        }

        Rectangle{
            id:layout_actions
            height: 68
            radius: 5
            color: FluTheme.isDark ? Qt.rgba(32/255,32/255,32/255,1) : Qt.rgba(243/255,243/255,243/255,1)
            anchors{
                top:text_message.bottom
                left: parent.left
                right: parent.right
            }

            Item {
                id:divider
                width: 1
                height: parent.height
                anchors.centerIn: parent
            }

            FluButton{
                anchors{
                    left: parent.left
                    leftMargin: 20
                    rightMargin: 10
                    right: divider.left
                    verticalCenter: parent.verticalCenter
                }
                text: negativeText
                onClicked: {
                    popup.close()
                    negativeClicked()
                }
            }

            FluFilledButton{
                anchors{
                    right: parent.right
                    left: divider.right
                    rightMargin: 20
                    leftMargin: 10
                    verticalCenter: parent.verticalCenter
                }
                text: positiveText
                onClicked: {
                    popup.close()
                    positiveClicked()
                }
            }

        }
    }
}
