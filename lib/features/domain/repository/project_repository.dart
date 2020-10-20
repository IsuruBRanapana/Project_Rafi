import 'package:dartz/dartz.dart';
import 'package:project_rafi/core/error/failures.dart';
import 'package:project_rafi/features/domain/entities/request/data_request.dart';
import 'package:project_rafi/features/domain/entities/request/login_request.dart';
import 'package:project_rafi/features/domain/entities/request/sign_up_request.dart';
import 'package:project_rafi/features/domain/entities/request/theropist_request.dart';
import 'package:project_rafi/features/domain/entities/response/login_response.dart';
import 'package:project_rafi/features/domain/entities/response/sign_up_response.dart';
import 'package:project_rafi/features/domain/entities/response/thero_response.dart';

abstract class ProjectRepository {
  Future<Either<Failure, SignUpUser>> getSignUp(SignUpRequest request);
  Future<Either<Failure, LoginResponse>> getLogin(LoginRequest request);
  Future<Either<Failure, List<TheroResponse>>> getThero(TheropistRequest request);
  Future<Either<Failure, LoginResponse>> getData(DataRequestEntity request);

}