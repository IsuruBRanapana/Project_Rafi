import 'package:equatable/equatable.dart';

class LoginResponse extends Equatable{
  final String uid;
  final String userName;
  final String height;
  final String weight;
  final String email;
  final String imgUrl;
  final String injuryPeriod;

  LoginResponse({this.injuryPeriod, this.uid,this.userName, this.height, this.weight, this.email, this.imgUrl,});
  @override
  List<Object> get props => [];
}