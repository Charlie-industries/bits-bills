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
      print('Data on api_client: $response');
      return UpcomingUsers.fromJson(response.data as Map<String, dynamic>);
    } else {
      throw Exception('Unknown error');
    }
  }
}
