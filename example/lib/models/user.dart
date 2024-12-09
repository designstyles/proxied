import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    required bool? isActive,
    required String? id,
    required String? displayName,
  }) = _UserData;
}
