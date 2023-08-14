import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'signup_event.dart';
import 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupInitialState()) {
    on<SignupNameChangedEvent>((event, emit) {
      if (event.name.length < 3) {
        emit(SignupNameErrorState("Please enter a valid User name"));
      } else {
        emit(SignupValidState());
      }
    });

    on<SignupEmailChangedEvent>((event, emit) {
      if (EmailValidator.validate(event.email) == false) {
        emit(SignupEmailErrorState("Please enter a valid Email ID"));
      } else {
        emit(SignupValidState());
      }
    });

    on<SignupPasswordChangedEvent>((event, emit) {
      RegExp regex = RegExp(
          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
      if (event.password == "" || !regex.hasMatch(event.password)) {
        emit(SignupPasswordErrorState("Please enter a valid Password"));
      } else {
        emit(SignupValidState());
      }
    });

    on<SignupConfirmPasswordChangedEvent>((event, emit) {
      if (event.confirmPassword != event.password) {
        emit(SignupConfirmPasswordErrorState(
            "Please enter the same password as above"));
      } else {
        emit(SignupValidState());
      }
    });

    on<SignupCheckedChangedEvent>((event, emit) {
      if (!event.isChecked) {
        emit(SignupCheckedErrorState("Please select the check box"));
      } else {
        emit(SignupValidState());
      }
    });

    on<SignupSubmittedEvent>((event, emit) {
      emit(SignupLoadingState());
    });
  }
}
