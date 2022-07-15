import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/State%20Mangement/BloC/Cubits/InterntCubits.dart';
import 'package:test/State%20Mangement/BloC/Cubits/internet_state.dart';

class Cubits extends StatelessWidget {
  const Cubits( {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>InternetCubit(),
      child: Scaffold(
        body: Center(
          child: BlocBuilder<InternetCubit, InternetState>(builder: (context, state) {
            if (state == InternetState.Gaine) {
              return Center(child: Text("Connected"));
            } else if (state == InternetState.Lost) {
              return Center(child: Text("Not Connected"));
            } else {
              return Center(child: Text("Looding..."));
            }
          }),
        ),
      ),
    );
  }
}
