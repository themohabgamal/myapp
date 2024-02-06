class AppRegex {
  static bool isEmailValid(String email) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }

  static bool hasMinimumLength(String password, int minLength) {
    return password.length >= minLength;
  }

  static bool hasUppercase(String password) {
    final uppercaseRegex = RegExp(r'[A-Z]');
    return uppercaseRegex.hasMatch(password);
  }

  static bool hasLowercase(String password) {
    final lowercaseRegex = RegExp(r'[a-z]');
    return lowercaseRegex.hasMatch(password);
  }

  static bool hasDigit(String password) {
    final digitRegex = RegExp(r'\d');
    return digitRegex.hasMatch(password);
  }
}
