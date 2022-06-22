import 'package:flutter/material.dart';
import 'package:get/get.dart';

DialogGetx() {
  // Get.defaultDialog();
  Get.defaultDialog(
    title:"Alert",
    titleStyle: TextStyle(fontSize:25),
    middleText: "Runing",
    middleTextStyle:  TextStyle(fontSize:20),
    // backgroundColor: Colors.purple,
    radius: 30,
    content: Container(),
    textCancel: "Cancel",
    cancelTextColor: Colors.black26,
    textConfirm: "Confirm",
    confirmTextColor: Colors.black45,
    buttonColor: Colors.lightGreen,
    onCancel: (){},
    onConfirm: (){},

    // cancel: Container(),
    // confirm: Container(),
    // actions: [
    //   RaisedButton(onPressed: (){}, child: Text("Action1"),),
    //   RaisedButton(onPressed: (){}, child: Text("Action2"),),
    // ],
    barrierDismissible: false // block click on other side
  );
}
