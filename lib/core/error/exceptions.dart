import 'package:project_rafi/features/data/models/response/error_response_model.dart';

class CacheException implements Exception {}

class ServerException implements Exception {
  final ErrorResponseModel errorResponseModel;
  ServerException(this.errorResponseModel);
}