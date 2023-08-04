import 'package:app_demo/features/home/presentation/widgets/home_banners.dart';
import 'package:app_demo/features/home/presentation/widgets/home_recommendation.dart';
import 'package:flutter/material.dart';

import '../../domain/models/home.dart';

class HomeSuccessScreen extends StatelessWidget {
  final Home data;

  const HomeSuccessScreen({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(
          parent: BouncingScrollPhysics(),
        ),
        children: [
          HomeBannerSlider(banners: data.horizontalBanners),
          const SizedBox(height: 32.0),
          HomeRecommendation(products: data.recommendations),
        ],
      ),
    );
  }
}
