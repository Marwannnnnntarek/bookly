class AppError {
  final String message;
  final AppErrorType type;

  AppError(this.message, {this.type = AppErrorType.unknown});

  @override
  String toString() => message;
}

enum AppErrorType { network, server, timeout, parsing, unknown, noData }

class NetworkError extends AppError {
  NetworkError(String message) : super(message, type: AppErrorType.network);
}

class ServerError extends AppError {
  ServerError(String message) : super(message, type: AppErrorType.server);
}

class TimeoutError extends AppError {
  TimeoutError(String message) : super(message, type: AppErrorType.timeout);
}

class ParsingError extends AppError {
  ParsingError(String message) : super(message, type: AppErrorType.parsing);
}

class NoDataError extends AppError {
  NoDataError(String message) : super(message, type: AppErrorType.noData);
}
