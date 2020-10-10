import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:project_rafi/core/error/failures.dart';
import 'package:project_rafi/features/domain/entities/request/login_request.dart';
import 'package:project_rafi/features/domain/entities/response/login_response.dart';
import 'package:project_rafi/features/domain/use_case/log_in_use_case.dart';

import '../bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LogInUseCase getLogin;

  LoginBloc({@required LogInUseCase getLogin})
      : assert(getLogin != null),
        getLogin = getLogin,
        super(LoginInitial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is GetLogin) {
      yield UserLoading();
      final failureOrUser = await getLogin(LoginParameters(
          request: LoginRequest(
              email: event.loginRequest.email,
              password: event.loginRequest.password)));
      yield* _eitherUserLoadedOrErrorState(failureOrUser);
    }
  }

  Stream<LoginState> _eitherUserLoadedOrErrorState(
      Either<Failure, LoginResponse> failureOrUser,
      ) async* {
    yield failureOrUser.fold(
          (failure) => UserError(message: _mapFailureToMessage(failure)),
          (user) => UserLoaded(user: user),
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
