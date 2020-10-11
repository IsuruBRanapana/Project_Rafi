import 'package:equatable/equatable.dart';
import 'package:project_rafi/features/domain/entities/response/sign_up_response.dart';

abstract class SignUpState extends Equatable {
  SignUpState([List props = const <dynamic>[]]);

  @override
  List<Object> get props => [];
}

class SignUpInitial extends SignUpState {}

class SignUpLoading extends SignUpState{}

class SignUpLoaded extends SignUpState{
  final SignUpUser response;

  SignUpLoaded({this.response}):super([response]);
}

class SignUpError extends SignUpState{
  final String message;

  SignUpError({this.message}):super([message]);

}