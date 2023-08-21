class AppException implements Exception {
  final _message;
  final _prefix;
  AppException([this._message, this._prefix]);

  String toString() {
    return '$_prefix$_message';
  }
}






class FatchDataException extends AppException {
  FatchDataException([String? message])
      : super(message, "Error During Communication");
}


class BadException extends AppException {
 BadException([String? message])
      : super(message, "Invaild resquest");
}

class UnauthorisedException extends AppException {
 UnauthorisedException([String? message])
      : super(message, " Unauthorised resquest");
}


class InvaildInputException extends AppException {
InvaildInputException([String? message])
      : super(message, " Invaild Input");
}


