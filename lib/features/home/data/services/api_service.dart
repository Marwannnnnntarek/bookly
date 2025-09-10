import 'package:dio/dio.dart';

class ApiService {
  final String baseUrl = 'https://www.googleapis.com/books/v1/';
  final String apiKey = 'AIzaSyBq7vzC8LoJ7lUt41vc0B44RvR_9BDtM6A';
  final Dio dio;

  ApiService(this.dio);

  Future<Map<String, dynamic>> get({
    required String endPoint,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await dio.get(
      '$baseUrl$endPoint',
      queryParameters: {'key': apiKey, ...?queryParameters},
    );
    return response.data;
  }
}
