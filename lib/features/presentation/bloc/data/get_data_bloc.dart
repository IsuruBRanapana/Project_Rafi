import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:project_rafi/core/error/failures.dart';
import 'package:project_rafi/features/domain/entities/request/data_request.dart';
import 'package:project_rafi/features/domain/entities/response/login_response.dart';
import 'package:project_rafi/features/domain/use_case/data_request_use_case.dart';
import 'package:project_rafi/features/presentation/bloc/bloc.dart';

class GetDataBloc extends Bloc<DataEvent, DataState> {
  final DataUseCase getLogin;

  GetDataBloc({@required DataUseCase getLogin})
      : assert(getLogin != null),
        getLogin = getLogin,
        super(DataInitial());

  @override
  Stream<DataState> mapEventToState(
      DataEvent event,
      ) async* {
    if (event is GetData) {
      yield DataLoading();
      final failureOrUser = await getLogin(DataParameters(
          request: DataRequestEntity(
              uid: event.loginRequest.uid)));
      yield* _eitherUserLoadedOrErrorState(failureOrUser);
    }
  }

  Stream<DataState> _eitherUserLoadedOrErrorState(
      Either<Failure, LoginResponse> failureOrUser,
      ) async* {
    yield failureOrUser.fold(
          (failure) => DataError(message: _mapFailureToMessage(failure)),
          (user) => DataLoaded(user: user),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ConnectionFailure:
        return 'No internet connection detected.';
      case ServerFailure:
        return /*(failure as ServerFailure).errorResponse.message*/ "failure";
      case AuthorizedFailure:
        return 'Unauthorized User';
      case PlatformFailure:
        return "Error";
      default:
        return 'Unexpected error';
    }
  }
}