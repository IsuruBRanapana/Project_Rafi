import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sign_up_request_model.g.dart';

@JsonSerializable()
class SignUpRequestModel extends Equatable {
  final String userName;
  final String age;
  final String weight;
  final String height;
  final String position;
  final String injuryPeriod;
  final String email;
  final String password;
  final String imgUrl;

  SignUpRequestModel(
      {this.userName,
        this.imgUrl,
      this.age,
      this.weight,
      this.height,
      this.position,
      this.injuryPeriod,
      this.email,
        this.password,
      });

  @override
  List<Object> get props =>
      [userName, age, weight, position, injuryPeriod, email,password,imgUrl];

  factory SignUpRequestModel.fromJson(Map<String,dynamic> json)=>_$SignUpRequestModelFromJson(json);
  Map <String,dynamic> toJson()=>_$SignUpRequestModelToJson(this);
}
