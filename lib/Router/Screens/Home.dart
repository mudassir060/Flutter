import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Home"),
              Text("${Get.arguments}"),
              Text("${Get.parameters["someValue"]}"),
               ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Back"),
              )
            ],
          ),
        ),
    );
  }
}
