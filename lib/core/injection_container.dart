import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:project_rafi/core/utils/app_session.dart';
import 'package:project_rafi/core/utils/input_convertor.dart';
import 'package:project_rafi/core/utils/input_validator.dart';
import 'package:project_rafi/features/data/data_source/firebase_data_source.dart';
import 'package:project_rafi/features/data/repository/project_repository_impl.dart';
import 'package:project_rafi/features/domain/repository/project_repository.dart';
import 'package:project_rafi/features/domain/use_case/log_in_use_case.dart';
import 'package:project_rafi/features/domain/use_case/sign_up_user_use_case.dart';
import 'package:project_rafi/features/presentation/bloc/bloc.dart';

import 'network/network_info.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(() => LoginBloc(getLogin: sl()));

  ///use cases
  sl.registerLazySingleton(() => LogInUseCase(sl()));
  sl.registerLazySingleton(() => SignUpUserUseCase(sl()));

  ///repository
  sl.registerLazySingleton<ProjectRepository>(
      () => ProjectRepositoryImpl(networkInfo: sl(), firebaseDataSource: sl()));

  ///data source
  sl.registerLazySingleton<FirebaseDataSource>(() => FirebaseDataSourceImpl());

  sl.registerLazySingleton(() => InputConverter());
  sl.registerLazySingleton(() => InputValidator());
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
  sl.registerLazySingleton(() => Session());

  sl.registerLazySingleton(() => DataConnectionChecker());
}
