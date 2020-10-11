// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorResponseModel _$ErrorResponseModelFromJson(Map<String, dynamic> json) {
  return ErrorResponseModel(
    status: json['status'] as int,
    error: json['error'] as String,
    message: json['message'] as String,
    timestamp: json['timestamp'] as String,
    path: json['path'] as String,
  );
}

Map<String, dynamic> _$ErrorResponseModelToJson(ErrorResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'error': instance.error,
      'message': instance.message,
      'timestamp': instance.timestamp,
      'path': instance.path,
    };
