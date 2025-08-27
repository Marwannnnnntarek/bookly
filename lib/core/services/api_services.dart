import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio;
  static const String apiKey =
      "AIzaSyBq7vzC8LoJ7lUt41vc0B44RvR_9BDtM6A"; // move to env/secure storage

  ApiServices({required this.dio}) {
    dio.options = dio.options.copyWith(
      baseUrl: 'https://www.googleapis.com/books/v1/',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 20),
    );
  }

  Future<Map<String, dynamic>> get({
    required String endPoint,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await dio.get(
        endPoint,
        queryParameters: {
          ...?queryParameters,
          'key': apiKey, // always add API key
        },
        options: options,
      );

      final data = response.data;
      if (data is Map<String, dynamic>) return data;

      throw const FormatException('Response data is not a JSON object');
    } on DioException catch (e) {
      final status = e.response?.statusCode;
      final message = e.message ?? 'Request failed';
      throw Exception('GET $endPoint failed ($status): $message');
    }
  }
}
