import 'package:equatable/equatable.dart';
import 'package:project_rafi/features/domain/entities/request/login_request.dart';

abstract class LoginEvent extends Equatable {
  LoginEvent([List props = const <dynamic>[]]);
  @override
  List<Object> get props => props;
}

class GetLogin extends LoginEvent{
  final LoginRequest loginRequest;

  GetLogin({this.loginRequest}):super([loginRequest]);
}