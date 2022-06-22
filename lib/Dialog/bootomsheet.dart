import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Theme is work when color is not use


Bottom_Sheet() {
  Get.bottomSheet(
      Container(
        child: Wrap(
          children: [
            ListTile(
              leading: Icon(Icons.wb_sunny_outlined),
              title: Text("Light Theme"),
              onTap: () {
                Get.changeTheme(ThemeData.light());
              },
            ),
            ListTile(
              leading: Icon(Icons.wb_sunny),
              title: Text("Dark Theme"),
              onTap: () {
                Get.changeTheme(ThemeData.dark());
              },
            ),
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: BorderSide(
          color: Colors.white,
          style: BorderStyle.solid,
          width: 2.0,
        ),
      ),
      isDismissible: true,
      enableDrag: false,
      // backgroundColor: Colors.amberAccent,
      // barrierColor: Colors.limeAccent,
      );
}
