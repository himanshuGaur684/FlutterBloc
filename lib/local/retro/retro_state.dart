part of 'retro_bloc.dart';

@immutable
abstract class RetroState extends Equatable {
  @override
  List<Object> get props => [];
}

class InitialRetroState extends RetroState {}

class LoadingRetroState extends RetroState {}

class LoadedRetroState extends RetroState {
  final List<Posts> data;
  LoadedRetroState({this.data});
}

class ErrorRetroState extends RetroState {
  final error;
  ErrorRetroState({this.error});
}
