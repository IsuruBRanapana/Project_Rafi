import 'package:equatable/equatable.dart';
import 'package:project_rafi/features/data/models/request/theropist_request_model.dart';

class TheropistRequest extends TheropistRequestModel {
  final String userName;

  TheropistRequest(
      {this.userName,}):super(userName: userName);

}
