import 'package:equatable/equatable.dart';
import 'package:project_rafi/features/domain/entities/response/login_response.dart';

abstract class DataState extends Equatable {
  DataState([List props = const <dynamic>[]]);
  @override
  List<Object> get props => [];
}

class DataInitial extends DataState {}

class DataLoading extends DataState{}

class DataLoaded extends DataState{
  final LoginResponse user;

  DataLoaded({this.user}):super([user]);
}

class DataError extends DataState{
  final String message;

  DataError({this.message}):super([message]);
}
