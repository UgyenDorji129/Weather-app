abstract class SignupEvent {}

class SignupNameChangedEvent extends SignupEvent {
  final String name;
  SignupNameChangedEvent(this.name);
}

class SignupPasswordChangedEvent extends SignupEvent {
  final String password;
  SignupPasswordChangedEvent(this.password);
}

class SignupConfirmPasswordChangedEvent extends SignupEvent {
  final String confirmPassword;
  final String password;
  SignupConfirmPasswordChangedEvent(this.confirmPassword, this.password);
}

class SignupEmailChangedEvent extends SignupEvent {
  final String email;
  SignupEmailChangedEvent(this.email);
}

class SignupCheckedChangedEvent extends SignupEvent {
  final bool isChecked;
  SignupCheckedChangedEvent(this.isChecked);
}

class SignupSubmittedEvent extends SignupEvent {
  final String email;
  final String name;
  final String password;
  SignupSubmittedEvent(this.email, this.password, this.name);
}
