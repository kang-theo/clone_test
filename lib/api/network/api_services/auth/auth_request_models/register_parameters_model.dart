class RegisterParams {
  final String email;
  final String fullName;
  final String dob;
  final String password;
  final String passwordConfirmation;
  final String measurementSystem;

  RegisterParams({
    required this.email,
    required this.fullName,
    required this.dob,
    required this.password,
    required this.passwordConfirmation,
    required this.measurementSystem,
  });

  // Implement toJson
  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'full_name': fullName,
      'birthday': dob,
      'password': password,
      'password_confirmation': passwordConfirmation,
      'measurement_system': measurementSystem,
      'body_measurement_system': measurementSystem,
      'nutrition_measurement_system': measurementSystem,
    };
  }


}
