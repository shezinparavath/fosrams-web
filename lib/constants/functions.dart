class AppFunctions {
  static String? emptyCheck(String? value) {
    if (value == null || value.isEmpty) {
      return 'Field cannot be empty';
    }
    return null;
  }

  static String? emailCheck(String? value) {
    if (value == null || value.isEmpty) {
      return 'Field cannot be empty';
    }
    String emailVaildate = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    if (!RegExp(emailVaildate).hasMatch(value)) {
      return 'Email not in correct format';
    }
    return null;
  }
}
