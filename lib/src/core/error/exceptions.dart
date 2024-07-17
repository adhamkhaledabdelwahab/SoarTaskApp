class ServerException implements Exception {
  String? message;

  ServerException(this.message);
}

class CacheException implements Exception {
  String message;

  CacheException(this.message);
}

class UnKnownException implements Exception {
  String message;

  UnKnownException(this.message);
}
