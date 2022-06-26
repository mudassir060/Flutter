import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:test/Router/Home.dart';
import 'package:test/Router/about.dart';

class GetRoutNamed extends StatefulWidget {
  const GetRoutNamed({Key? key}) : super(key: key);

  @override
  State<GetRoutNamed> createState() => _GetRoutNamedState();
}

class _GetRoutNamedState extends State<GetRoutNamed> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Named Routes",
      initialRoute: "/",
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: "/", page:()=> const GetRoutNamed()),
        GetPage(name: "/home", page:()=> const Home()),
        GetPage(name: "/about", page:()=> const About(),
        transition: Transition.leftToRight),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Text("Navigation"),
      ),
    );
  }
}
