class MapperExeption<From, To> implements Exception {
  final String message;

  MapperExeption(this.message);

  @override
  String toString() => 'Error when mapping class $From to $To: $message';
}
