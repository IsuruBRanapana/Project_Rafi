// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) {
  return LoginResponseModel(
    injuryPeriod: json['injuryPeriod'] as String,
    uid: json['uid'] as String,
    userName: json['userName'] as String,
    height: json['height'] as String,
    weight: json['weight'] as String,
    email: json['email'] as String,
    imgUrl: json['imgUrl'] as String,
  );
}

Map<String, dynamic> _$LoginResponseModelToJson(LoginResponseModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'userName': instance.userName,
      'height': instance.height,
      'weight': instance.weight,
      'email': instance.email,
      'imgUrl': instance.imgUrl,
      'injuryPeriod': instance.injuryPeriod,
    };
