import 'package:json_annotation/json_annotation.dart';
import 'package:project_rafi/core/utils/app_images.dart';
import 'package:project_rafi/features/domain/entities/response/login_response.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel extends LoginResponse {
  final String uid;
  final String userName;
  final String height;
  final String weight;
  final String email;
  final String imgUrl;
  final String injuryPeriod;

  LoginResponseModel({
    this.injuryPeriod,
    this.uid,
    this.userName,
    this.height,
    this.weight,
    this.email,
    this.imgUrl,
  }) : super(injuryPeriod:injuryPeriod,uid: uid, userName: userName,height: height,weight: weight,email:email,imgUrl: imgUrl);

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);
}
