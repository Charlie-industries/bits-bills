import 'package:dio/dio.dart';

class ApiClient {
  late final Dio _dio;

  ApiClient({
    required String baseUrl,
    required String apiKey,
    required String apiHost,
  }) {
    _dio = Dio()
      ..options.baseUrl = baseUrl
      ..options.headers = {
        'X-RapidAPI-Key': apiKey,
        'X-RapidApi-Host': apiHost,
      }
      ..interceptors.add(
        LogInterceptor(
          requestBody: true,
          responseBody: true,
        ),
      );
  }

  //Future<upcommingUsers> getUpcomingUsers({
  //  required int page,
  //  int? limit,
  //}) async {
  //  final response = await _dio.get(
  //    'titles/x'
  //  )
  //}
}
