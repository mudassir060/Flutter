import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:test/Router/Home.dart';
import 'package:test/Router/about.dart';

class GetRoutUnNamed extends StatefulWidget {
  const GetRoutUnNamed({Key? key}) : super(key: key);

  @override
  State<GetRoutUnNamed> createState() => _GetRoutUnNamedState();
}

class _GetRoutUnNamedState extends State<GetRoutUnNamed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                // Get.to(const Home(),
                //     fullscreenDialog: true,
                //     transition: Transition.zoom,
                //     duration: const Duration(milliseconds: 3000),
                //     curve: Curves.bounceInOut);

                // Get.off(Home());
                // Get.offAll(Home());
                Get.to(Home(), arguments: "Mudassir" ,  );
              },
              child: const Text("Home"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(About());
              },
              child: Text("About"),
            )
          ],
        ),
      ),
    );
  }
}
