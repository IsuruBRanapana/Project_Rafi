import 'package:dartz/dartz.dart';
import 'package:project_rafi/core/error/exceptions.dart';
import 'package:project_rafi/core/error/failures.dart';
import 'package:project_rafi/core/network/network_info.dart';
import 'package:project_rafi/features/data/data_source/firebase_data_source.dart';
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
      try {
        var response = await firebaseDataSource.getLogin(request);
        response.docs.forEach((element) {
          print("${element.data()["email"].toString()}");
          user = LoginResponse(
              uid: element.data()['uid'].toString(),
              userName: element.data()['userName'].toString());
        });
        return Right(user);
      } on ServerException catch (e) {
        return Left(ServerFailure(e.errorResponseModel));
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
              special: element.data()["email"].toString()));
        });
        return Right(res);
      } on ServerException catch (e) {
        return Left(ServerFailure(e.errorResponseModel));
      }
    } else {
      return Left(ConnectionFailure());
    }
  }
}
