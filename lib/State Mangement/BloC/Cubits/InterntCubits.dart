import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/State%20Mangement/BloC/Cubits/internet_state.dart';



class InternetCubit extends Cubit<InternetState>{
    Connectivity _connectivity = Connectivity();
    StreamSubscription? connectivitysubscription;

    InternetCubit(): super(InternetState.Initial){
    connectivitysubscription =
    _connectivity.onConnectivityChanged.listen((event) {
    if (event == ConnectivityResult.mobile ||
    event == ConnectivityResult.wifi) {
    emit(InternetState.Gaine);
    } else {
      emit(InternetState.Lost);
    }
    });
    }

    @override
    Future<void> close() {
    connectivitysubscription?.cancel();
    return super.close();
    }
}