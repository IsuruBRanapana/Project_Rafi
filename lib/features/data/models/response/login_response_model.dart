import 'package:json_annotation/json_annotation.dart';
import 'package:project_rafi/features/domain/entities/response/login_response.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel extends LoginResponse{
  final String uid;

  LoginResponseModel({this.uid}):super(uid: uid);

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
  Map <String,dynamic> toJson()=>_$LoginResponseModelToJson(this);
}