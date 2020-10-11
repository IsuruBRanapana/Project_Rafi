import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:project_rafi/core/error/failures.dart';
import 'package:project_rafi/features/domain/entities/request/sign_up_request.dart';
import 'package:project_rafi/features/domain/entities/response/sign_up_response.dart';
import 'package:project_rafi/features/domain/use_case/sign_up_user_use_case.dart';

import '../bloc.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final SignUpUserUseCase getSignUp;

  SignUpBloc({@required SignUpUserUseCase getSignUp})
      : assert(getSignUp != null),
        getSignUp = getSignUp,
        super(SignUpInitial());

  @override
  Stream<SignUpState> mapEventToState(
    SignUpEvent event,
  ) async* {
    if (event is GetSignUp) {
      yield SignUpLoading();
      final failureOrUser = await getSignUp(SignUpUserParameters(
          request: SignUpRequest(

              email: event.request.email,
              password: event.request.password,
            userName: event.request.userName,
            age: event.request.age,
            weight: event.request.weight,
            height: event.request.height,
            position: event.request.position,
            injuryPeriod: event.request.injuryPeriod
          )));
      yield* _eitherUserLoadedOrErrorState(failureOrUser);
    }
  }

  Stream<SignUpState> _eitherUserLoadedOrErrorState(
      Either<Failure, SignUpUser> failureOrUser,
      ) async* {
    yield failureOrUser.fold(
          (failure) => SignUpError(message: _mapFailureToMessage(failure)),
          (user) => SignUpLoaded(response: user),
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
