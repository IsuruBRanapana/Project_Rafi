import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:project_rafi/core/error/failures.dart';
import 'package:project_rafi/core/usecases/usecase.dart';
import 'package:project_rafi/features/domain/entities/request/sign_up_request.dart';
import 'package:project_rafi/features/domain/entities/response/sign_up_response.dart';
import 'package:project_rafi/features/domain/repository/project_repository.dart';
import 'package:meta/meta.dart';

class SignUpUserUseCase
    extends UseCase<SignUpUser, SignUpUserParameters> {
  final ProjectRepository repository;

  SignUpUserUseCase(this.repository);

  @override
  Future<Either<Failure, SignUpUser>> call(
      SignUpUserParameters params) async {
    return await repository.getSignUp(params.request);
  }
}

class SignUpUserParameters extends Equatable {
  final SignUpRequest request;

  SignUpUserParameters({@required this.request});

  @override
  List<Object> get props => [request];
}
