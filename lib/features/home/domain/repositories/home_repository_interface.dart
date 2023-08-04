import 'package:app_demo/core/resources/data_state.dart';
import 'package:app_demo/features/home/domain/models/home.dart';

abstract class HomeRepositoryInterface {
  Future<DataState<Home>> getContent();
}
