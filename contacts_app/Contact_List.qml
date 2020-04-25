import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.13

ListView {
    id: list
    clip: true //запрещает любую адресовку эл вне списка
    boundsBehavior: ListView.StopAtBounds //отключение подпружинивания
    ScrollBar.vertical: ScrollBar{}
    delegate: Contact_Item{
        text: name
        text2: line2
        icon: picture
        selected: list.currentIndex === index
        onLeftClick: {
            list.currentIndex= index
        }
    }
}
