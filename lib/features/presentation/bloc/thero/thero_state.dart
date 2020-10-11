
import 'package:equatable/equatable.dart';
import 'package:project_rafi/features/domain/entities/response/thero_response.dart';

abstract class TheroState extends Equatable {
 TheroState([List props = const <dynamic>[]]);

  @override
  List<Object> get props => [];
}

class TheroInitial extends TheroState {}

class TheroLoading extends TheroState{}

class TheroLoaded extends TheroState{
  final List<TheroResponse> response;

  TheroLoaded({this.response}):super([response]);

}

class TheroError extends TheroState{
  final String message;

  TheroError({this.message}):super([message]);

}