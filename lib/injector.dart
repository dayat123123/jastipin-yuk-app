import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jastipin_yuk/core/local_storage/local_storage.dart';
import 'package:jastipin_yuk/core/local_storage/shared_pref_local_storage.dart';
import 'package:jastipin_yuk/core/localization/locale_cubit.dart';
import 'package:jastipin_yuk/core/network/firebase/firebase_service.dart';
import 'package:jastipin_yuk/core/network/restful/dio_client.dart';
import 'package:jastipin_yuk/features/authentication/data/data_sources/authentication_local_data_source.dart';
import 'package:jastipin_yuk/features/authentication/data/data_sources/authentication_network_data_source.dart';
import 'package:jastipin_yuk/features/authentication/data/data_sources/user_network_data_source.dart';
import 'package:jastipin_yuk/features/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:jastipin_yuk/features/authentication/data/repositories/user_repository_impl.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/user_repository.dart';
import 'package:jastipin_yuk/features/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:jastipin_yuk/firebase_options.dart';

import 'package:jastipin_yuk/main.dart';
import 'package:jastipin_yuk/shared/extensions/context_extension.dart';
import 'package:jastipin_yuk/shared/misc/api_paths.dart';

Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await _setupDependencies();
}

Future<void> _setupDependencies() async {
  injector.registerSingleton<DioClient>(
    DioClient(
      baseUrl: ApiPaths.baseUrl,
      refreshTokenUrl: ApiPaths.refreshToken,
    ),
  );
  injector.registerSingletonAsync<LocalStorage>(
    () async => SharedPrefLocalStorage.create(),
  );
  await injector.isReady<LocalStorage>();
  injector.registerSingleton<FirebaseService>(FirebaseServiceImpl());
  injector.registerFactory<AuthenticationNetworkDataSource>(
    () => AuthenticationNetworkDataSourceImpl(
      injector.get<DioClient>(),
      injector.get<FirebaseService>(),
    ),
  );
  injector.registerFactory<AuthenticationLocalDataSource>(
    () => AuthenticationLocalDataSourceImpl(injector.get<LocalStorage>()),
  );
  injector.registerFactory<AuthenticationRepository>(
    () => AuthenticationRepositoryImpl(
      injector.get<AuthenticationNetworkDataSource>(),
      injector.get<AuthenticationLocalDataSource>(),
    ),
  );
  injector.registerFactory<UserNetworkDataSource>(
    () => UserNetworkDataSourceImpl(injector.get<DioClient>()),
  );
  injector.registerFactory<UserRepository>(
    () => UserRepositoryImpl(injector.get<UserNetworkDataSource>()),
  );

  injector.registerSingleton<AuthBloc>(
    AuthBloc(authRepository: injector.get<AuthenticationRepository>()),
  );
  injector.registerSingleton<ThemeCubit>(
    ThemeCubit(injector.get<LocalStorage>()),
  );
  injector.registerSingleton<LocaleCubit>(
    LocaleCubit(injector.get<LocalStorage>()),
  );
}

//  ==========registerSingleton==========
/// Gunakan ketika Anda ingin satu instance dari dependency untuk seluruh aplikasi dan ingin segera menginisialisasi
/// objek tersebut saat pendaftaran. Cocok untuk objek yang perlu tersedia segera setelah aplikasi dimulai.

//  ==========registerFactory==========
/// Gunakan ketika Anda ingin objek baru setiap kali dependency tersebut diminta.
/// Cocok untuk objek yang stateless atau tidak perlu mempertahankan status antar panggilan.

//  ==========registerLazySingleton==========
/// Gunakan ketika Anda ingin satu instance dari dependency untuk seluruh aplikasi, tetapi hanya ingin menginisialisasi objek
/// tersebut saat pertama kali diminta.Efisien untuk objek yang berat atau mahal untuk dibuat.
