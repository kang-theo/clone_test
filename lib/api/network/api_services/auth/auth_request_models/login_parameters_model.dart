class LoginParams {
  final String username;
  final String password;

  LoginParams({
    required this.username,
    required this.password,
  });

  // Implement toJson
  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
    };
  }
}
