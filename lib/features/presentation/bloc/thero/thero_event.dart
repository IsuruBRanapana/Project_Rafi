import 'package:equatable/equatable.dart';
import 'package:project_rafi/features/domain/entities/request/theropist_request.dart';

abstract class TheroEvent extends Equatable {
  TheroEvent([List props = const <dynamic>[]]);
  @override
  List<Object> get props => props;
}

class GetThero extends TheroEvent{
  final TheropistRequest request;

  GetThero({this.request}):super([request]);

}
