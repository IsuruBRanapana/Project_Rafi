import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:project_rafi/core/error/exceptions.dart';
import 'package:project_rafi/core/error/failures.dart';
import 'package:project_rafi/core/network/network_info.dart';
import 'package:project_rafi/features/data/data_source/firebase_data_source.dart';
import 'package:project_rafi/features/domain/entities/request/data_request.dart';
import 'package:project_rafi/features/domain/entities/request/login_request.dart';
import 'package:project_rafi/features/domain/entities/request/sign_up_request.dart';
import 'package:project_rafi/features/domain/entities/request/theropist_request.dart';
import 'package:project_rafi/features/domain/entities/response/login_response.dart';
import 'package:project_rafi/features/domain/entities/response/sign_up_response.dart';
import 'package:project_rafi/features/domain/entities/response/thero_response.dart';
import 'package:project_rafi/features/domain/repository/project_repository.dart';

class ProjectRepositoryImpl extends ProjectRepository {
  final NetworkInfo networkInfo;
  final FirebaseDataSource firebaseDataSource;

  ProjectRepositoryImpl({
    this.networkInfo,
    this.firebaseDataSource,
  });

  @override
  Future<Either<Failure, SignUpUser>> getSignUp(SignUpRequest request) async {
    SignUpUser signUpUser;
    String errorMessage;
    //todo:handle platform exceptions
    if (await networkInfo.isConnected) {
      try {
        var response = await firebaseDataSource.getSignUp(request);
        response.docs.forEach((element) {
          print("${element.data()["email"].toString()}");
          signUpUser = SignUpUser(
              email: element.data()['email'].toString(),
              uid: element.data()['uid'].toString());
        });
        return Right(signUpUser);
      } on ServerException catch (e) {
        return Left(ServerFailure(e.errorResponseModel));
      } on PlatformException catch (e) {
        return Left(PlatformFailure(e.message));
      }catch (e) {
        print(e.code);
        switch (e.code) {
          case "invalid-email":
            errorMessage = "Your email address appears to be malformed.";
            break;
          case "email-already-in-use":
            errorMessage = "You Already Have an account. Please Log in using that";
            break;
          case "weak-password":
            errorMessage = "Password should be at least 6 characters";
            break;
          case "user-not-found":
            errorMessage = "User with this email doesn't exist.";
            break;
          case "ERROR_USER_DISABLED":
            errorMessage = "User with this email has been disabled.";
            break;
          case "too-many-requests":
            errorMessage = "Too many requests. Try again later.";
            break;
          case "ERROR_OPERATION_NOT_ALLOWED":
            errorMessage = "Signing in with Email and Password is not enabled.";
            break;
          default:
            errorMessage = "An undefined Error happened.";
        }
        return Left(PlatformFailure(errorMessage));
      }
    } else {
      return Left(ConnectionFailure());
    }
  }

  @override
  Future<Either<Failure, LoginResponse>> getLogin(LoginRequest request) async {
    LoginResponse user;
    //todo:handle platform exceptions
    if (await networkInfo.isConnected) {
      String errorMessage;
      var response;
      try {
        try {
          response = await firebaseDataSource.getLogin(request);
        } on PlatformException catch (e) {
          return Left(PlatformFailure(e.message));
        }
        response.docs.forEach((element) {
          print("${element.data()["email"].toString()}");
          user = LoginResponse(
            uid: element.data()['uid'].toString(),
            userName: element.data()['userName'].toString(),
            height: element.data()['height'].toString(),
            weight: element.data()['weight'].toString(),
            email: element.data()['email'].toString(),
            imgUrl: element.data()['imgUrl'].toString(),
            injuryPeriod: element.data()['injuryPeriod'].toString(),
          );
        });
        return Right(user);
      } on ServerException catch (e) {
        print("testing abcdefhsdf error 11");
        return Left(ServerFailure(e.errorResponseModel));
      } on PlatformException catch (e) {
        print("testing abcdefhsdf error 22");
        return Left(PlatformFailure(e.message));
      } catch (e) {
        print(e.code);
        switch (e.code) {
          case "invalid-email":
            errorMessage = "Your email address appears to be malformed.";
            break;
          case "wrong-password":
            errorMessage = "Your password is wrong.";
            break;
          case "user-not-found":
            errorMessage = "User with this email doesn't exist.";
            break;
          case "ERROR_USER_DISABLED":
            errorMessage = "User with this email has been disabled.";
            break;
          case "too-many-requests":
            errorMessage = "Too many requests. Try again later.";
            break;
          case "ERROR_OPERATION_NOT_ALLOWED":
            errorMessage = "Signing in with Email and Password is not enabled.";
            break;
          default:
            errorMessage = "An undefined Error happened.";
        }
        return Left(PlatformFailure(errorMessage));
      }
    } else {
      return Left(ConnectionFailure());
    }
  }

  @override
  Future<Either<Failure, List<TheroResponse>>> getThero(
      TheropistRequest request) async {
    List<TheroResponse> res = List();
    if (await networkInfo.isConnected) {
      try {
        var response = await firebaseDataSource.getThero(request);
        response.docs.forEach((element) {
          print("${element.data()["email"].toString()}");
          res.add(TheroResponse(
            email: element.data()["email"].toString(),
            name: element.data()["name"].toString(),
            mobile: element.data()["mobile"].toString(),
            special: element.data()["special"].toString(),
            photoUrl: element.data()["photoUrl"].toString(),
          ));
        });
        return Right(res);
      } on ServerException catch (e) {
        return Left(ServerFailure(e.errorResponseModel));
      }
    } else {
      return Left(ConnectionFailure());
    }
  }

  @override
  Future<Either<Failure, LoginResponse>> getData(
      DataRequestEntity request) async {
    LoginResponse user;
    if (await networkInfo.isConnected) {
      var response;
      try {
        try {
          response = await firebaseDataSource.getData(request);
        } on PlatformException catch (e) {
          return Left(PlatformFailure(e.message));
        }
        response.docs.forEach((element) {
          print("${element.data()["email"].toString()}");
          user = LoginResponse(
            uid: element.data()['uid'].toString(),
            userName: element.data()['userName'].toString(),
            height: element.data()['height'].toString(),
            weight: element.data()['weight'].toString(),
            email: element.data()['email'].toString(),
            imgUrl: element.data()['imgUrl'].toString(),
            injuryPeriod: element.data()['injuryPeriod'].toString(),
          );
        });
        return Right(user);
      } on ServerException catch (e) {
        return Left(ServerFailure(e.errorResponseModel));
      } on PlatformException catch (e) {
        return Left(PlatformFailure(e.message));
      }
    } else {
      return Left(ConnectionFailure());
    }
  }
}
