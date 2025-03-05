import 'package:bookly/core/api/api_url.dart';
import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio;
  ApiServices({required this.dio});
  Future<Map<String, dynamic>> get({required String endPoint, var data}) async {
    var request = await dio.get(ApiUrl.baseUrl, data: data);
    return request.data;
  }
}
