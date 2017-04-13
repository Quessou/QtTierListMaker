import QtQuick 2.0

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

    }
}
