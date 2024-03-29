class NetworkException implements Exception {
  final int statusCode;
  String? message;

  NetworkException({required this.statusCode, this.message});

  @override
  String toString() =>
      'NetworkExeption: status code $statusCode, message: $message';
}
