import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
class ErrorResponse extends Equatable {
  final int status;
  final String error;
  final String message;
  final String timestamp;
  final String path;

  ErrorResponse({
    @required this.status,
    @required this.error,
    @required this.message,
    @required this.timestamp,
    @required this.path,
  });

  @override
  List<Object> get props => [status, error, message, timestamp, path];
}