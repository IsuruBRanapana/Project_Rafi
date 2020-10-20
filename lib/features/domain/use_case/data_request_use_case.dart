import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:project_rafi/core/error/failures.dart';
import 'package:project_rafi/core/usecases/usecase.dart';
import 'package:project_rafi/features/domain/entities/request/data_request.dart';
import 'package:project_rafi/features/domain/entities/response/login_response.dart';
import 'package:project_rafi/features/domain/repository/project_repository.dart';

class DataUseCase extends UseCase<LoginResponse, DataParameters> {
  final ProjectRepository repository;

  DataUseCase(this.repository);

  @override
  Future<Either<Failure, LoginResponse>> call(DataParameters params) async {
    return await repository.getData(params.request);
  }
}

class DataParameters extends Equatable {
  final DataRequestEntity request;

  DataParameters({@required this.request});

  @override
  List<Object> get props => [request];
}
