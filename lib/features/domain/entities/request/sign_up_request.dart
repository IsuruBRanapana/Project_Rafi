import 'package:project_rafi/features/data/models/request/sign_up_request_model.dart';

class SignUpRequest extends SignUpRequestModel {
  final String userName;
  final String age;
  final String weight;
  final String height;
  final String position;
  final String injuryPeriod;
  final String email;
  //TODO-encode base64
  final String password;
  final String imgUrl;

  SignUpRequest({
    this.imgUrl,
    this.userName,
    this.age,
    this.weight,
    this.height,
    this.position,
    this.injuryPeriod,
    this.email,
    this.password,
  }) : super(
    imgUrl: imgUrl,
            userName: userName,
            age: age,
            weight: weight,
            height: height,
            position: position,
            injuryPeriod: injuryPeriod,
            email: email,
            password: password);
}
