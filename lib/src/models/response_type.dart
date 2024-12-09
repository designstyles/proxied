import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_type.freezed.dart';

@freezed
class ResponseType<T> with _$ResponseType {
  const factory ResponseType({
    required T? results,
    required String? error,
  }) = _ResponseType;

  factory ResponseType.empty() => const ResponseType(
        results: null,
        error: null,
      );
}
