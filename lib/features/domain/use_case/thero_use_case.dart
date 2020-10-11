import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:project_rafi/core/error/failures.dart';
import 'package:project_rafi/core/usecases/usecase.dart';
import 'package:project_rafi/features/domain/entities/request/theropist_request.dart';
import 'package:project_rafi/features/domain/entities/response/thero_response.dart';
import 'package:project_rafi/features/domain/repository/project_repository.dart';

class TheroUseCase extends UseCase<List<TheroResponse>, TheroParameters> {
  final ProjectRepository repository;

  TheroUseCase(this.repository);

  @override
  Future<Either<Failure, List<TheroResponse>>> call(TheroParameters params) async {
    return await repository.getThero(params.request);
  }
}

class TheroParameters extends Equatable {
  final TheropistRequest request;

  TheroParameters({@required this.request});

  @override
  List<Object> get props => [request];
}
