import 'package:project_rafi/features/data/models/request/profile_data_request_model.dart';

class DataRequestEntity extends DataRequest{
  final String uid;

  DataRequestEntity({this.uid}):super(uid: uid);
}