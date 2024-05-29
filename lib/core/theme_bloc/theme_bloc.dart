import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {

  ThemeBloc() : super(ThemeStateMode(ThemeMode.light)) {
    on<ThemeEventUpdate>((event, emit) => emit(ThemeStateMode(event.mode)));
  }

}

abstract class ThemeState {

  ThemeState(this.mode);

  final ThemeMode mode;
}
abstract class ThemeEvent {}

class ThemeStateMode extends ThemeState {
  ThemeStateMode(super.mode);
}

class ThemeEventUpdate extends ThemeEvent {

  ThemeEventUpdate(this.mode);

  final ThemeMode mode;
}