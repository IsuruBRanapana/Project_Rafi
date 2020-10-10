import 'package:equatable/equatable.dart';

class SignUpUser extends Equatable {
  final String email;
  final String uid;

  SignUpUser({this.email, this.uid});

  @override
  List<Object> get props => [email,uid];
}
