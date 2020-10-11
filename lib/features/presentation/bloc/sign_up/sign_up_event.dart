import 'package:equatable/equatable.dart';
import 'package:project_rafi/features/domain/entities/request/sign_up_request.dart';

abstract class SignUpEvent extends Equatable {
  SignUpEvent([List props = const <dynamic>[]]);
  @override
  List<Object> get props => props;
}

class GetSignUp extends SignUpEvent{
  final SignUpRequest request;

  GetSignUp({this.request}):super([request]);

}
