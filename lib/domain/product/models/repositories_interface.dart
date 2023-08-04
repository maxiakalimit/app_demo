import 'package:app_demo/features/home/domain/repositories/home_repository_interface.dart';
import 'package:app_demo/features/home/domain/usecases/get_home_usecase.dart';

abstract class RepositoriesInterface {
  final HomeRepositoryInterface homeRepositoryInterface;
  final GetHomeUseCase getHomeUseCase;

  RepositoriesInterface({
    required this.homeRepositoryInterface,
    required this.getHomeUseCase,
  });
}
