import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.13

Window {
    visible: true
    width: 320
    height: 480
    title: qsTr("Контакты")

    ListModel{//хранение данных модели
        id: contactsModel
        ListElement{
            name: "Егор"
            line2: "online"
            picture: "icons/Egor.png"
        }
        ListElement{
            name: "Анна"
            line2: "Был(a) в сети 36 минут назад"
            picture: "icons/Anna.png"
        }
        ListElement{
            name: "Даня"
            line2: "Был(a) в сети 6 минут назад"
            picture: "icons/Danya.png"
        }

    }
    ColumnLayout{
        anchors.fill: parent
        Search_List{
            Layout.fillWidth: true
        }


        MainToolBar{
            Layout.fillWidth: true
            onNewItem: {
                contactsModel.append({name:text});

            }


        }
        Contact_List{
            model: contactsModel
            Layout.fillHeight: true
            Layout.fillWidth: true



        }

    }




}
