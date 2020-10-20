import 'package:equatable/equatable.dart';
import 'package:project_rafi/features/domain/entities/request/data_request.dart';

abstract class DataEvent extends Equatable {
  DataEvent([List props = const <dynamic>[]]);
  @override
  List<Object> get props => props;
}

class GetData extends DataEvent{
  final DataRequestEntity loginRequest;

  GetData({this.loginRequest}):super([loginRequest]);
}