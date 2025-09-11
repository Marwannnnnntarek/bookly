class AppError {
  final String message;
  final AppErrorType type;

  AppError(this.message, {this.type = AppErrorType.unknown});

  @override
  String toString() => message;
}

enum AppErrorType { network, server, timeout, parsing, unknown, noData }

class NetworkError extends AppError {
  NetworkError(super.message) : super(type: AppErrorType.network);
}

class ServerError extends AppError {
  ServerError(super.message) : super(type: AppErrorType.server);
}

class TimeoutError extends AppError {
  TimeoutError(super.message) : super(type: AppErrorType.timeout);
}

class ParsingError extends AppError {
  ParsingError(super.message) : super(type: AppErrorType.parsing);
}

class NoDataError extends AppError {
  NoDataError(super.message) : super(type: AppErrorType.noData);
}
