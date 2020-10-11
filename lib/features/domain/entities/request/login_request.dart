import 'package:project_rafi/features/data/models/request/login_request_model.dart';

class LoginRequest extends LoginRequestModel {
  final String email;
  final String password;

  LoginRequest({this.email, this.password})
      : super(email: email, password: password);
}
