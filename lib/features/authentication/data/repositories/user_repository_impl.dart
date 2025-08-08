import 'package:jastipin_yuk/features/authentication/data/data_sources/user_network_data_source.dart';
import 'package:jastipin_yuk/features/authentication/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserNetworkDataSource _networkDataSource;
  const UserRepositoryImpl(this._networkDataSource);
}
