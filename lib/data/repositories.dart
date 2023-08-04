import '../domain/product/models/repositories_interface.dart';
import '../features/home/data/repositories/home_repository.dart';
import '../features/home/domain/repositories/home_repository_interface.dart';
import '../features/home/domain/usecases/get_home_usecase.dart';
import 'datasources/mock_service.dart';

class Repositories implements RepositoriesInterface {
  static Repositories? _instance;

  //Repositories
  final HomeRepositoryInterface homeRepositoryInterface;

  //UseCases
  final GetHomeUseCase getHomeUseCase;

  Repositories._({
    required this.homeRepositoryInterface,
    required this.getHomeUseCase,
  });

  //ignore: long-method
  factory Repositories({
    required MockService mockService,
  }) {
    if (_instance == null) {
      final homeRepository = HomeRepository(mockService: mockService);

      _instance = Repositories._(
        homeRepositoryInterface: homeRepository,
        getHomeUseCase: GetHomeUseCase(homeRepository: homeRepository),
      );
    }

    return _instance!;
  }
}
