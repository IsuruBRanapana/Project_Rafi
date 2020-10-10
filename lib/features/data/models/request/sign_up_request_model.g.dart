// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpRequestModel _$SignUpRequestModelFromJson(Map<String, dynamic> json) {
  return SignUpRequestModel(
    userName: json['userName'] as String,
    age: json['age'] as String,
    weight: json['weight'] as String,
    height: json['height'] as String,
    position: json['position'] as String,
    injuryPeriod: json['injuryPeriod'] as String,
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$SignUpRequestModelToJson(SignUpRequestModel instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'age': instance.age,
      'weight': instance.weight,
      'height': instance.height,
      'position': instance.position,
      'injuryPeriod': instance.injuryPeriod,
      'email': instance.email,
    };
