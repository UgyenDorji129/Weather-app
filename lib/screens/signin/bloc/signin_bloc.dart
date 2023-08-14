import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/screens/signin/bloc/signin_event.dart';
import 'package:flutter_boilerplate/screens/signin/bloc/signin_state.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  SigninBloc() : super(SigninInitialState()) {
    on<SigninNameChangedEvent>((event, emit) {
      if (event.name.length < 3) {
        emit(SigninNameErrorState("Please enter a valid User name"));
      } else {
        emit(SigninValidState());
      }
    });

    on<SigninPasswordChangedEvent>((event, emit) {
      RegExp regex = RegExp(
          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
      if (event.password == "" ||
          !regex.hasMatch(event.password) ||
          event.name.length < 3) {
        emit(SigninPasswordErrorState("Please enter a valid Password"));
      } else {
        emit(SigninValidState());
      }
    });

    on<SigninSubmittedEvent>((event, emit) {
      emit(SigninLoadingState());
    });
  }
}
