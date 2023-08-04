import 'package:app_demo/core/resources/data_state.dart';
import 'package:app_demo/core/usecase/usecase.dart';

import '../models/home.dart';
import '../repositories/home_repository_interface.dart';

class GetHomeUseCase implements UseCase<DataState<Home>, void> {
  final HomeRepositoryInterface _homeRepository;

  GetHomeUseCase({
    required HomeRepositoryInterface homeRepository,
  }) : _homeRepository = homeRepository;

  @override
  Future<DataState<Home>> call({void params}) {
    return _homeRepository.getContent();
  }
}
