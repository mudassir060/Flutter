import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/Dialog/bootomsheet.dart';
import 'package:test/Dialog/getx.dart';
import 'package:test/Router/GetRoutUnNamed.dart';

import 'Router/GetRoutNamed.dart';
import 'Snackbar/gitx.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: GetMaterialApp(
      //   title: 'Flutter Demo',
      //   theme: ThemeData(
      //     primarySwatch: Colors.blue,
      //   ),
        home: const Scaffold(
          body: GetRoutNamed()
          // Center(
          //   child: 
          //    ElevatedButton(
          //     onPressed: Bottom_Sheet,
          //     child: const Text("Press"),
          //   ),
          // ),
        ),
      // ),
    );
  }
}
