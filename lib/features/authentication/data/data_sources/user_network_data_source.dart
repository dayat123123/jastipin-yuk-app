import 'package:jastipin_yuk/core/network/restful/dio_client.dart';

abstract class UserNetworkDataSource {}

class UserNetworkDataSourceImpl implements UserNetworkDataSource {
  final DioClient _dioClient;

  const UserNetworkDataSourceImpl(this._dioClient);
}
