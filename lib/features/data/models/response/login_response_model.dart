import 'package:json_annotation/json_annotation.dart';
import 'package:project_rafi/features/domain/entities/response/login_response.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel extends LoginResponse{
  final String uid;
  final String userName;

  LoginResponseModel({this.uid,this.userName, }):super(uid: uid,userName: userName);

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
  Map <String,dynamic> toJson()=>_$LoginResponseModelToJson(this);
}