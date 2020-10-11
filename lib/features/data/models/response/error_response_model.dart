import 'package:json_annotation/json_annotation.dart';
import 'package:project_rafi/features/domain/entities/response/error_response.dart';
import 'package:meta/meta.dart';

part 'error_response_model.g.dart';

@JsonSerializable()
class ErrorResponseModel extends ErrorResponse {
  ErrorResponseModel({
    @required int status,
    @required String error,
    @required String message,
    @required String timestamp,
    @required String path,
  }) : super(
      status: status,
      error: error,
      message: message,
      timestamp: timestamp,
      path: path);

  factory ErrorResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorResponseModelToJson(this);

  @override
  List<Object> get props => [];
}