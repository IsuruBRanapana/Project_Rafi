import 'package:equatable/equatable.dart';
import 'package:project_rafi/features/domain/entities/response/error_response.dart';

abstract class Failure extends Equatable{
  Failure([List properties = const<dynamic>[]]);
  @override
  List<Object> get props => props;
}

// General failures
class ServerFailure extends Failure {
  final ErrorResponse errorResponse;

  ServerFailure(this.errorResponse);
}

class CacheFailure extends Failure {}

class ConnectionFailure extends Failure {}

class AuthorizedFailure extends Failure {}