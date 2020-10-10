import 'package:dartz/dartz.dart';
import 'package:project_rafi/core/error/failures.dart';
import 'package:project_rafi/features/domain/entities/request/sign_up_request.dart';
import 'package:project_rafi/features/domain/entities/response/sign_up_response.dart';

abstract class ProjectRepository {
  Future<Either<Failure, SignUpUser>> getSignUp(SignUpRequest request);
}