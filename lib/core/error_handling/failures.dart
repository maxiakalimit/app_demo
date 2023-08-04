import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class FailureEntity with _$FailureEntity {
  const FailureEntity._();

  const factory FailureEntity.baseFailure({
    required String title,
    String? message,
  }) = BaseFailure;

  const factory FailureEntity.noConnectionFailure() = NoConnectionFailure;
}
