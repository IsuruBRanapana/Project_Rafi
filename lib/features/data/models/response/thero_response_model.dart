import 'package:json_annotation/json_annotation.dart';
import 'package:project_rafi/features/domain/entities/response/thero_response.dart';

part 'thero_response_model.g.dart';

@JsonSerializable()
class TheroResponseModel extends TheroResponse {
  final String email;
  final String name;
  final String mobile;
  final String special;

  TheroResponseModel({this.email, this.name, this.mobile, this.special})
      : super(email: email, name: name, mobile: mobile, special: special);

  factory TheroResponseModel.fromJson(Map<String, dynamic> json) =>
      _$TheroResponseModelFromJson(json);
  Map <String,dynamic> toJson()=>_$TheroResponseModelToJson(this);
}
