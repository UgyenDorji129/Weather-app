abstract class SignupState {}

class SignupInitialState extends SignupState {}

class SignupInvalidState extends SignupState {}

class SignupValidState extends SignupState {}

class SignupNameErrorState extends SignupState {
  final String errorMessage;
  SignupNameErrorState(this.errorMessage);
}

class SignupPasswordErrorState extends SignupState {
  final String errorMessage;
  SignupPasswordErrorState(this.errorMessage);
}

class SignupCheckedErrorState extends SignupState {
  final String errorMessage;
  SignupCheckedErrorState(this.errorMessage);
}

class SignupConfirmPasswordErrorState extends SignupState {
  final String errorMessage;
  SignupConfirmPasswordErrorState(this.errorMessage);
}

class SignupEmailErrorState extends SignupState {
  final String errorMessage;
  SignupEmailErrorState(this.errorMessage);
}

class SignupLoadingState extends SignupState {}
