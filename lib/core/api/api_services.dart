import 'package:bookly/core/api/api_url.dart';
import 'package:dio/dio.dart';

class ApiServices {
  final Dio _dio;
  ApiServices(this._dio);
  Future<Map<String, dynamic>> get({required String endPoint, var data}) async {
    var request = await _dio.get("${ApiUrl.baseUrl}$endPoint", data: data);
    return request.data;
  }
}
