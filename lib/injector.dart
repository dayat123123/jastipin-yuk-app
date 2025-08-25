import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jastipin_yuk/core/local_storage/local_storage.dart';
import 'package:jastipin_yuk/core/local_storage/shared_pref_local_storage.dart';
import 'package:jastipin_yuk/core/localization/locale_cubit.dart';
import 'package:jastipin_yuk/core/network/firebase/firebase_service.dart';
import 'package:jastipin_yuk/core/network/restful_api/dio_client.dart';
import 'package:jastipin_yuk/core/network/websocket/websocket_client.dart';
import 'package:jastipin_yuk/core/router/goroute_navigator.dart';
import 'package:jastipin_yuk/features/authentication/data/data_sources/authentication_local_data_source.dart';
import 'package:jastipin_yuk/features/authentication/data/data_sources/authentication_network_data_source.dart';
import 'package:jastipin_yuk/features/authentication/data/data_sources/user_network_data_source.dart';
import 'package:jastipin_yuk/features/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:jastipin_yuk/features/authentication/data/repositories/user_repository_impl.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/user_repository.dart';
import 'package:jastipin_yuk/features/authentication/presentation/bloc/auth/auth_bloc.dart';
import 'package:jastipin_yuk/features/chat/data/data_source/chat_local_data_source.dart';
import 'package:jastipin_yuk/features/chat/data/data_source/chat_network_data_source.dart';
import 'package:jastipin_yuk/features/chat/data/repositories/chat_repository_impl.dart';
import 'package:jastipin_yuk/features/chat/domain/repositories/chat_repository.dart';
import 'package:jastipin_yuk/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:jastipin_yuk/features/otp/data/data_sources/otp_network_data_source.dart';
import 'package:jastipin_yuk/features/otp/data/repositories/otp_repository_impl.dart';
import 'package:jastipin_yuk/features/otp/domain/repositories/otp_repository.dart';
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
  injector.registerLazySingleton<DioClient>(
    () => DioClient(
      baseUrl: ApiPaths.baseUrl,
      refreshTokenUrl: ApiPaths.refreshToken,
    ),
  );
  injector.registerSingleton<WebsocketClient>(WebsocketClient());

  injector.registerSingletonAsync<LocalStorage>(
    () async => SharedPrefLocalStorage.create(),
  );
  await injector.isReady<LocalStorage>();
  injector.registerLazySingleton<FirebaseService>(() => FirebaseServiceImpl());
  injector.registerLazySingleton<AuthenticationNetworkDataSource>(
    () => AuthenticationNetworkDataSourceImpl(
      injector.get<DioClient>(),
      injector.get<FirebaseService>(),
    ),
  );
  injector.registerLazySingleton<AuthenticationLocalDataSource>(
    () => AuthenticationLocalDataSourceImpl(injector.get<LocalStorage>()),
  );
  injector.registerLazySingleton<AuthenticationRepository>(
    () => AuthenticationRepositoryImpl(
      injector.get<AuthenticationNetworkDataSource>(),
      injector.get<AuthenticationLocalDataSource>(),
    ),
  );
  injector.registerLazySingleton<UserNetworkDataSource>(
    () => UserNetworkDataSourceImpl(injector.get<DioClient>()),
  );
  injector.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(injector.get<UserNetworkDataSource>()),
  );

  injector.registerLazySingleton<OtpNetworkDataSource>(
    () => OtpNetworkDataSourceImpl(injector.get<DioClient>()),
  );
  injector.registerLazySingleton<OtpRepository>(
    () => OtpRepositoryImpl(injector.get<OtpNetworkDataSource>()),
  );

  injector.registerSingleton<ChatNetworkDataSource>(
    ChatNetworkDataSourceImpl(injector.get<WebsocketClient>()),
  );
  injector.registerSingleton<ChatLocalDataSource>(ChatLocalDataSourceImpl());
  injector.registerSingleton<ChatRepository>(
    ChatRepositoryImpl(
      injector.get<ChatNetworkDataSource>(),
      injector.get<ChatLocalDataSource>(),
    ),
  );

  injector.registerSingleton<AuthBloc>(
    AuthBloc(authRepository: injector.get<AuthenticationRepository>()),
  );
  injector.registerSingleton<ChatBloc>(
    ChatBloc(chatRepository: injector.get<ChatRepository>()),
  );

  injector.registerLazySingleton<GoRouter>(
    () => GoRouteNavigator.router(injector.get<AuthBloc>()),
  );
  injector.registerSingleton<ThemeCubit>(
    ThemeCubit(injector.get<LocalStorage>()),
  );
  injector.registerSingleton<LocaleCubit>(
    LocaleCubit(injector.get<LocalStorage>()),
  );
}

//  ==========registerSingleton==========
/// Satu instance global, dibuat **segera saat pendaftaran**.
/// Cocok untuk objek yang perlu selalu tersedia saat app start, misalnya:
/// - WebSocket global client yang harus connect segera
/// - Bloc/Cubit yang harus langsung ready (misal AuthBloc)
/// - Router yang harus langsung tersedia
///
/// Kelebihan:
/// - Selalu tersedia segera
/// Kekurangan:
/// - Objek berat langsung dibuat walau belum dipakai
/// - Bisa menambah waktu start app jika banyak singleton berat

//  ==========registerFactory==========
/// Membuat instance **baru setiap kali diminta**.
/// Cocok untuk:
/// - UseCase stateless
/// - UI atau model yang tidak perlu mempertahankan state antar pemanggilan
/// - Objek yang hanya dipakai sementara
///
/// Kelebihan:
/// - Ringan dan fleksibel
/// - Tidak mempertahankan state global
/// Kekurangan:
/// - Tidak ada state global yang dipertahankan
/// - Bisa membuat overhead jika objek berat sering dibuat

//  ==========registerLazySingleton==========
/// Satu instance global, dibuat **saat pertama kali dipakai**.
/// Cocok untuk:
/// - Data source (network/local)
/// - Repository
/// - Service yang berat atau mahal untuk dibuat (misal DioClient, FirebaseService)
///
/// Kelebihan:
/// - Efisien, instance tidak dibuat sebelum dibutuhkan
/// - Mengurangi waktu start app
/// Kekurangan:
/// - Ada delay saat pertama pemakaian (biasanya tidak signifikan)
/// - Jika banyak dependensi saling bergantung, urutan pemanggilan harus diperhatikan
