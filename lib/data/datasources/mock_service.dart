import 'package:app_demo/domain/product/models/product.dart';
import 'package:app_demo/features/home/domain/models/home_banner.dart';

import '../../features/home/domain/models/home.dart';

class MockService {
  Future<Home> getHomeWidgets() async {
    await Future<void>.delayed(const Duration(seconds: 4));

    return const Home(
      horizontalBanners: [
        HomeBanner(
          image: "https://thecloudset.com/upload/home/banner-2-mobile-alt.jpg",
          title: 'Start earning from your closet',
          text: null,
        ),
        HomeBanner(
          image: "https://thecloudset.com/upload/home/banner-3-mobile-alt.jpg",
          title: 'Buy only what you really need',
          text: null,
        ),
      ],
      recommendations: [
        Product(
          id: 1,
          brandName: 'Coperni',
          title: 'The Ring Swipe salad bag',
          price: 2000,
          type: ProductType.rent,
          images: [
            "https://thecloudset.com/upload/product/5271/da9a73d7ad7c2b0bc71b3258095c2f48/w400.jpg",
            "https://thecloudset.com/upload/product/5271/6b2d50cbd2c8650ce385a7d3e709d2d2/w400.jpg",
            "https://thecloudset.com/upload/product/5271/b983105eb166eb040c676d88e8365b6a/w400.jpg",
            "https://thecloudset.com/upload/product/5271/29d2ca740b419bcc81a6f9f3c755951f/w400.jpg",
          ],
        ),
        Product(
          id: 1,
          brandName: 'MUGLER',
          title: 'Bright green asymmetric dress',
          price: 2000,
          type: ProductType.rent,
          images: [
            "https://thecloudset.com/upload/product/4370/31b69251c11f85a6c9698483a5043438/w400.jpg",
            "https://thecloudset.com/upload/product/4370/347babb532a1c25071ad55031090a674/w400.jpg",
            "https://thecloudset.com/upload/product/4370/6523165d825b945fcb44a53c9feea598/w400.jpg",
            "https://thecloudset.com/upload/product/4370/d84120ad9770cd3010a1dc276c7f7f35/w400.jpg",
            "https://thecloudset.com/upload/product/4370/cc98e175096d5ed558760cffdce0fa05/w400.jpg",
          ],
        ),
        Product(
          id: 1,
          brandName: 'Ermanno Scervino',
          title: 'White shirt dress with floral print',
          price: 2000,
          type: ProductType.rent,
          images: [
            "https://thecloudset.com/upload/product/5381/06ed5b95fa8a063df20c52dcbaa97707/w400.jpg",
            "https://thecloudset.com/upload/product/5381/5e8784ae7692575e031bc3f252d56b27/w400.jpg",
            "https://thecloudset.com/upload/product/5381/cf38265e8dcf6d6a14f2ab89c8634e4a/w400.jpg",
            "https://thecloudset.com/upload/product/5381/f0c4601be53c29a6350363bd1b2cc553/w400.jpg",
            "https://thecloudset.com/upload/product/5381/cf34aeb8bd8f7590e042e24c2e39d069/w400.jpg",
            "https://thecloudset.com/upload/product/5381/b76c1b8ac28caf391dfbdc19a81f449c/w400.jpg",
          ],
        ),
        Product(
          id: 1,
          brandName: 'Jacquemus',
          title: 'Beige mini bag',
          price: 2000,
          type: ProductType.rent,
          images: [
            "https://thecloudset.com/upload/product/1884/f87a7e1434b240008beb06a2fc3a0e6c/w400.jpg",
            "https://thecloudset.com/upload/product/1884/6a825a9fb4a04d91f16a21aefd3ff736/w400.jpg",
            "https://thecloudset.com/upload/product/1884/ae8feedcf4176c702a64f91e4e5632e0/w400.jpg",
          ],
        ),
      ],
      verticalBanners: [],
    );
  }
}
