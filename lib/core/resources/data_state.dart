import '../error_handling/failures.dart';

abstract class DataState<T> {
  final T? data;
  final FailureEntity? error;

  DataState({this.data, this.error});
}

class DataSuccess<T> extends DataState<T> {
  DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  DataFailed(FailureEntity error) : super(error: error);
}
