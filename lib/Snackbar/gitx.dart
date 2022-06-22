import 'package:flutter/material.dart';
import 'package:get/get.dart';

// for using Getx GetMaterialApp is use first
// and after call toast function
// toast("Alert", "Toast is Runing...", Icons.notifications, true);

void toast(titel, notification, _icon, theme) {
  Get.snackbar(titel, notification,
      icon: Icon(_icon, color: Colors.white),
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: theme ? Colors.grey : Colors.lightGreen,
      borderRadius: 20,
      margin: EdgeInsets.all(15),
      colorText: Colors.white,
      duration: const Duration(seconds: 4),
      isDismissible: true,
      dismissDirection: DismissDirection.vertical,
      forwardAnimationCurve: Curves.easeOutBack,

      // reverseAnimationCurve: Curves.bounceInOut,

      // overlayBlur: 5,
      // overlayColor: Colors.white,

      // showProgressIndicator: true,
      // progressIndicatorBackgroundColor:Colors.lightBlueAccent,
      

      // mainButton: TextButton(
      // child:const Text('button'),
      //   onPressed: () {},
      // ),

      // onTap: (val) {    print(val);  }
      // leftBarIndicatorColor: Colors.lightBlue,

      // backgroundGradient: LinearGradient(colors: [
      //   Colors.lightBlue,Colors.lightGreen
      // ]),

      // borderColor: Colors.lightBlue,
      // borderWidth: 4,

      // animationDuration: const Duration(seconds: 4),

      // snackbarStatus: (val){},
      // userInputForm: Form(child: Row(children: [
      //   Expanded(child: TextField())
      // ],))
      );
}
