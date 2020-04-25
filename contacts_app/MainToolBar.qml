import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.13
import QtQuick.Layouts 1.13

RowLayout {

    signal newItem(string text)
    TextField{
        Layout.leftMargin: 10
        Layout.rightMargin: 10
        id:textField
        Layout.fillWidth: true
        selectByMouse: true
        placeholderText: "add contact"
    }
    function add(){
        newItem(textField.text);
        textField.clear();
    }

    Button{
        text: "Add"
        onClicked: {
            add();
        }
    }
    Keys.onReturnPressed: {
        add();
    }
    Keys.onEnterPressed: {
        add();
    }
}


