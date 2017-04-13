import QtQuick 2.0

import QtQuick.Controls 2.0

Item {
    id : root

    property alias backgroundColor : tierChartBackground.color


    Item {
        height          : parent.height
        width           : parent.width - sideBar.width
        anchors.right   : sideBar.left

        Rectangle  {
            id           : tierChartBackground
            anchors.fill : parent
            color        : "black"

            Rectangle {
                id  : horizontalArrows
                width   : parent.width * 0.85
                height  : 5
                anchors.verticalCenter  : parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                color   : parent.color == "#000000"/*"black"*/ ? "white" : "black"
            }

            Rectangle {
                id  : verticalArrows
                height   : parent.height * 0.85
                width  : 5
                anchors.verticalCenter  : parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                color   : parent.color == "#000000"/*"black"*/ ? "white" : "black"
            }

        }

    }


    Rectangle {
        id              : sideBar
        width           : 200
        height          : parent.height
        color           : "#CCCCCC"
        anchors.right   : parent.right

        Column {
            anchors.bottom  : parent.bottom
            spacing         : 10
            width           : parent.width

            Button {
                id  : importImageButton
                width : parent.width * 0.8
                height : 30
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Import image"
            }

            Button {
                id  : clearButton
                width : parent.width * 0.8
                height : 30
                anchors.horizontalCenter: parent.horizontalCenter
                text: "Clear"
            }

            Item {
                width  : 1
                height : 1
            }
        }
    }
}
