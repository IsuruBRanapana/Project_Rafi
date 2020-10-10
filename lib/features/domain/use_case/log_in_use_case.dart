import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:project_rafi/core/error/failures.dart';
import 'package:project_rafi/core/usecases/usecase.dart';
import 'package:project_rafi/features/domain/entities/request/login_request.dart';
import 'package:project_rafi/features/domain/entities/response/login_response.dart';
import 'package:project_rafi/features/domain/repository/project_repository.dart';
import 'package:meta/meta.dart';

class LogInUseCase extends UseCase<LoginResponse, LoginParameters> {
  final ProjectRepository repository;

  LogInUseCase(this.repository);

  @override
  Future<Either<Failure, LoginResponse>> call(LoginParameters params) async {
    return await repository.getLogin(params.request);
  }
}

class LoginParameters extends Equatable {
  final LoginRequest request;

  LoginParameters({@required this.request});

  @override
  List<Object> get props => [request];
}
