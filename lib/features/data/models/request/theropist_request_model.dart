import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'theropist_request_model.g.dart';

@JsonSerializable()
class TheropistRequestModel extends Equatable {
  final String userName;

  TheropistRequestModel(
      {this.userName,});

  @override
  List<Object> get props =>
      [userName];

  factory TheropistRequestModel.fromJson(Map<String,dynamic> json)=>_$TheropistRequestModelFromJson(json);
  Map <String,dynamic> toJson()=>_$TheropistRequestModelToJson(this);
}
