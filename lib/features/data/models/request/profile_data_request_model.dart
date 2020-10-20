
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'profile_data_request_model.g.dart';

@JsonSerializable()
class DataRequest extends Equatable{
  final String uid;

  DataRequest({this.uid});
  @override
  List<Object> get props => [uid];

  factory DataRequest.fromJson(Map<String,dynamic> json)=>_$DataRequestFromJson(json);
  Map <String,dynamic> toJson()=>_$DataRequestToJson(this);
}