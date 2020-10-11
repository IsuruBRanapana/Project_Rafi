import 'package:equatable/equatable.dart';

class TheroResponse extends Equatable {
  final String email;
  final String name;
  final String mobile;
  final String special;
  final String photoUrl;

  TheroResponse({this.email, this.name, this.mobile, this.special, this.photoUrl, });

  @override
  List<Object> get props => [email,name,mobile,special];
}
