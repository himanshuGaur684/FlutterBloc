import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_blocks/remote/response/retro_response.dart';
import 'package:flutter_blocks/remote/retrofit/retro_call.dart';
import 'package:meta/meta.dart';

part 'retro_event.dart';

part 'retro_state.dart';

class RetroBloc extends Bloc<RetroEvent, RetroState> {
  RetroBloc(RetroState initialState) : super(initialState);

  @override
  RetroState get initialState => InitialRetroState();

  @override
  Stream<RetroState> mapEventToState(RetroEvent event) async* {
    switch (event) {
      case RetroEvent.fetchPost:
        yield LoadingRetroState();
        try {
          final retro =
              Retro(Dio(BaseOptions(contentType: 'application/json')));
          print("Jai shree ram");
          var response = await retro.getAllPosts();
          print("done");
          yield LoadedRetroState(data: response);
        } on Exception {
          ErrorRetroState(error: Exception('No Internet Exception'));
        }
        break;
    }
  }
}
