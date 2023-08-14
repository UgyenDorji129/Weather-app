abstract class SigninEvent {}

class SigninNameChangedEvent extends SigninEvent {
  final String name;
  final String password;
  SigninNameChangedEvent(this.name, this.password);
}

class SigninPasswordChangedEvent extends SigninEvent {
  final String password;
  final String name;
  SigninPasswordChangedEvent(this.name, this.password);
}

class SigninSubmittedEvent extends SigninEvent {
  final String email;
  final String password;
  SigninSubmittedEvent(this.email, this.password);
}
