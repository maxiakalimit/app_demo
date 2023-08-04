import 'package:freezed_annotation/freezed_annotation.dart';

import 'failures.dart';

part 'error_object.freezed.dart';

@freezed
class ErrorObject with _$ErrorObject {
  const ErrorObject._();

  const factory ErrorObject({
    required final String title,
    final String? message,
  }) = _ErrorObject;

  static ErrorObject mapFailureToErrorObject({
    required FailureEntity? failure,
  }) {
    if (failure == null) {
      return const ErrorObject(title: '');
    }

    return failure.when(
      baseFailure: (title, message) => ErrorObject(
        title: title,
        message: message,
      ),
      noConnectionFailure: () => const ErrorObject(
        title: 'Error',
        message: 'It seems that your device is not connected to the network, '
            'please check your internet connectivity or try again later.',
      ),
    );
  }
}
