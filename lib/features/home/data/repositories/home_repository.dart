import 'package:app_demo/core/error_handling/failures.dart';
import 'package:app_demo/core/resources/data_state.dart';
import 'package:app_demo/data/datasources/mock_service.dart';

import '../../domain/models/home.dart';
import '../../domain/repositories/home_repository_interface.dart';

class HomeRepository implements HomeRepositoryInterface {
  final MockService _mockService;

  HomeRepository({required MockService mockService})
      : _mockService = mockService;

  @override
  Future<DataState<Home>> getContent() async {
    try {
      final data = await _mockService.getHomeWidgets();

      return DataSuccess(data);
    } on Object catch (_) {
      return DataFailed(const FailureEntity.baseFailure(
        title: 'An error has occurred',
      ));
    }
  }
}
