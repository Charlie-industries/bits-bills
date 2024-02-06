import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:e_reciept/data/remote/network/entity/user_entity.dart';
import 'package:e_reciept/domain/exception/network_exception.dart';

class ApiClient {
  late final Dio _dio;

  ApiClient({
    required String baseUrl,
  }) {
    _dio = Dio()
      ..options.baseUrl = baseUrl
      ..interceptors.add(
        LogInterceptor(
          requestBody: true,
          responseBody: true,
        ),
      );
  }

  Future<UpcomingUsers> getUpcomingUsers() async {
    final response = await _dio.get('/user');

    if (response.statusCode != null && response.statusCode! >= 400) {
      throw NetworkException(
          statusCode: response.statusCode!, message: response.statusMessage);
    } else if (response.statusCode != null) {
      final jsonResponse = jsonDecode(response.data);
      return UpcomingUsers.fromJson(jsonDecode(jsonResponse));
    } else {
      throw Exception('Unknown error');
    }
  }
}
