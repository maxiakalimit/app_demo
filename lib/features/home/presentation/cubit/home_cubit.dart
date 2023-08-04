import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/resources/data_state.dart';
import '../../domain/models/home.dart';
import '../../domain/usecases/get_home_usecase.dart';

part 'home_cubit.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading({
    required Home? data,
  }) = _HomeLoading;

  const factory HomeState.success({
    required Home data,
  }) = _HomeSuccess;

  const factory HomeState.error({
    required Home? data,
    required String error,
  }) = _HomeError;
}

class HomeCubit extends Cubit<HomeState> {
  final GetHomeUseCase _getHomeUseCase;

  HomeCubit({required GetHomeUseCase getHomeUseCase})
      : _getHomeUseCase = getHomeUseCase,
        super(const HomeState.loading(data: null));

  Future<void> get() async {
    final prevHomeData = state.whenOrNull(
      loading: (data) => data,
      success: (data) => data,
      error: (data, _) => data,
    );

    try {
      emit(HomeState.loading(data: prevHomeData));
      final data = await _getHomeUseCase();
      if (data is DataSuccess) {
        emit(HomeState.success(data: data.data!));
      } else if (data is DataFailed) {
        emit(HomeState.error(data: prevHomeData, error: ''));
      }
    } on Object catch (_) {
      rethrow;
    }
  }
}
