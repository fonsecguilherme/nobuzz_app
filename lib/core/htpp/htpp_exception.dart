// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:nobuzz_app/core/htpp/http_response.dart';

class HttpExeption implements Exception {
  String? message;
  int? statusCode;
  dynamic error;
  HttpResponse response;

  HttpExeption({
    this.message,
    this.statusCode,
    required this.error,
    required this.response,
  });

  @override
  String toString() {
    return 'RestClientException(message: $message, statusCode: $statusCode, error: $error, response: $response)';
  }
}
