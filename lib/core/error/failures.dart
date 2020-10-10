import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable{
  Failure([List properties = const<dynamic>[]]);
  @override
  List<Object> get props => props;
}

// General failures
class ServerFailure extends Failure {}

class CacheFailure extends Failure {}

class ConnectionFailure extends Failure {}

class AuthorizedFailure extends Failure {}