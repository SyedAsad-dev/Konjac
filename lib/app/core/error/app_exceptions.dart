class AppException implements Exception {
  final String message;
  AppException(this.message);
}

class NetworkException extends AppException {
  NetworkException([super.message = "No Internet Connection"]);
}

class TimeoutException extends AppException {
  TimeoutException([super.message = "Request Timeout"]);
}

class ServerException extends AppException {
  ServerException([super.message = "Server Error"]);
}
