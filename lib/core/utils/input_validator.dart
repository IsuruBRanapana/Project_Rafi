import 'package:dartz/dartz.dart';
import 'package:project_rafi/core/error/failures.dart';

class InputValidator {
  Either<Failure, String> checkLength(String str) {
    try {
      final length = str.length;
      if (length == 6) {
        return Right(str);
      } else {
        return Left(InvalidInputFailure());
      }
    } on Exception {
      return Left(InvalidInputFailure());
    }
  }

  Either<Failure, bool> compareTwo(String str1, String str2) {
    try {
      if (str1 == str2) {
        return Right(true);
      } else {
        return Left(InvalidInputFailure());
      }
    } on Exception {
      return Left(InvalidInputFailure());
    }
  }
}
class InvalidInputFailure extends Failure {
  @override
  // TODO: implement props
  List<Object> get props => null;
}