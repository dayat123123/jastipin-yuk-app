import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_data_model.dart';

part 'update_user_response_model.freezed.dart';
part 'update_user_response_model.g.dart';

@freezed
class UpdateUserResponseModel with _$UpdateUserResponseModel {
  const factory UpdateUserResponseModel({required UserDataModel user}) =
      _UpdateUserResponseModel;

  factory UpdateUserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserResponseModelFromJson(json);
}
