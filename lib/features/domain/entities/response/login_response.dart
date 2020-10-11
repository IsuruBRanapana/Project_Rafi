import 'package:equatable/equatable.dart';

class LoginResponse extends Equatable{
  final String uid;
  final String userName;

  LoginResponse({this.uid,this.userName, });
  @override
  List<Object> get props => [];
}