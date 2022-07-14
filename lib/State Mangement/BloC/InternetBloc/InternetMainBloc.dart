import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/State%20Mangement/BloC/InternetBloc/internet_bloc.dart';
import 'package:test/State%20Mangement/BloC/InternetBloc/internet_state.dart';

class BloC extends StatelessWidget {
  const BloC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>InternetBloc(),
      child: Scaffold(
        body: Center(
          child: BlocBuilder<InternetBloc, InternetState>(builder: (context, state) {
            if (state is InternetGainedState) {
              return Center(child: Text("Connected"));
            } else if (state is InternetLostState) {
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
