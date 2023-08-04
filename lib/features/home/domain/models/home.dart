
import '../../../../domain/product/models/product.dart';
import 'home_banner.dart';

class Home {
  final List<HomeBanner> horizontalBanners;
  final List<Product> recommendations;
  final List<String> verticalBanners;

  const Home({
    required this.horizontalBanners,
    required this.recommendations,
    required this.verticalBanners,
  });
}
