import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio;
  final baseUrl = 'https://www.googleapis.com/books/v1/';
  final apiKey = '&key=AIzaSyBq7vzC8LoJ7lUt41vc0B44RvR_9BDtM6A';

  ApiServices({required this.dio});

  Future<Map<String, dynamic>> get({
    required String endPoint,
  }) async {
    var response = await dio.get('$baseUrl$endPoint$apiKey');
    return response.data;
  }
}
