// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thero_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TheroResponseModel _$TheroResponseModelFromJson(Map<String, dynamic> json) {
  return TheroResponseModel(
    email: json['email'] as String,
    name: json['name'] as String,
    mobile: json['mobile'] as String,
    special: json['special'] as String,
    photoUrl: json['photoUrl'] as String,
  );
}

Map<String, dynamic> _$TheroResponseModelToJson(TheroResponseModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'mobile': instance.mobile,
      'special': instance.special,
      'photoUrl': instance.photoUrl,
    };
