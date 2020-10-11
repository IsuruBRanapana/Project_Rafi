import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:project_rafi/core/error/failures.dart';
import 'package:project_rafi/features/domain/entities/request/theropist_request.dart';
import 'package:project_rafi/features/domain/entities/response/thero_response.dart';
import 'package:project_rafi/features/domain/use_case/thero_use_case.dart';

import '../bloc.dart';

class TheroBloc extends Bloc<TheroEvent, TheroState> {
  final TheroUseCase getThero;

  TheroBloc({@required TheroUseCase getThero})
      : assert(getThero != null),
        getThero = getThero,
        super(TheroInitial());

  @override
  Stream<TheroState> mapEventToState(
    TheroEvent event,
  ) async* {
    if (event is GetThero) {
      yield TheroLoading();
      final failureOrUser = await getThero(TheroParameters(
          request: TheropistRequest(
        userName: event.request.userName,
      )));
      yield* _eitherUserLoadedOrErrorState(failureOrUser);
    }
  }

  Stream<TheroState> _eitherUserLoadedOrErrorState(
      Either<Failure, List<TheroResponse>> failureOrUser,
      ) async* {
    yield failureOrUser.fold(
          (failure) => TheroError(message: _mapFailureToMessage(failure)),
          (user) => TheroLoaded(response: user),
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
      default:
        return 'Unexpected error';
    }
  }
}
