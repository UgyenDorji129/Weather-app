abstract class SigninState {}

class SigninInitialState extends SigninState {}

class SigninInvalidState extends SigninState {}

// class SigninValidPasswordState extends SigninState {}

class SigninValidState extends SigninState {}

class SigninNameErrorState extends SigninState {
  final String errorMessage;
  SigninNameErrorState(this.errorMessage);
}

class SigninPasswordErrorState extends SigninState {
  final String errorMessage;
  SigninPasswordErrorState(this.errorMessage);
}

class SigninLoadingState extends SigninState {}
