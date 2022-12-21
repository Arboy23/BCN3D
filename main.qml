import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.14
import QtQuick.Controls.Styles 1.4
Window {
    id: window1
    width: 480
    height: 800
    visible: true
    title: qsTr("APP Aaron")



   StackView{
       id: stack
       initialItem: mainView
       anchors.fill: parent
   }

   Component{
   id:mainView

       Main_window{
       }
   }

   Component{
   id:axesView

       Axes_Autocalibration{
       }
   }

   Component{
   id:manualView

       Manual_Offset_Adjustment{
       }
   }

   Component{
   id:meshView

       Mesh_Mapping{
       }
   }
}
