abstract class AppException implements Exception {
  static AppException from(dynamic error) {
    if (error is AppException) return error;
    return UnknownException();
  }
}

class StringValueException extends AppException {}

class LengthValueException extends AppException {}

class UnknownException extends AppException {}
