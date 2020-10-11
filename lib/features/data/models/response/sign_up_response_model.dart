import 'package:json_annotation/json_annotation.dart';
import 'package:project_rafi/features/domain/entities/response/sign_up_response.dart';

part 'sign_up_response_model.g.dart';

@JsonSerializable()
class SignUpResponseModel extends SignUpUser {
  final String email;
  final String uid;

  SignUpResponseModel({this.email, this.uid})
      : super(
          email: email,
          uid: uid,
        );

  factory SignUpResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseModelFromJson(json);
  Map <String,dynamic> toJson()=>_$SignUpResponseModelToJson(this);
}
