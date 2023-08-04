import 'package:app_demo/core/utils/extensions/styles_context_ext.dart';
import 'package:flutter/material.dart';

import '../../../../presentations/widgets/dots_indicator.dart';
import '../../domain/models/home_banner.dart';
import 'home_single_banner.dart';

class HomeBannerSlider extends StatefulWidget {
  final List<HomeBanner> banners;

  const HomeBannerSlider({
    Key? key,
    required this.banners,
  }) : super(key: key);

  @override
  State<HomeBannerSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<HomeBannerSlider> {
  final _pageController = PageController(
    viewportFraction: 1.0,
  );
  var currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final styles = context.styles();

    return SizedBox(
      height: MediaQuery.of(context).size.width,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              allowImplicitScrolling: true,
              physics: const AlwaysScrollableScrollPhysics(
                parent: BouncingScrollPhysics(),
              ),
              onPageChanged: (page) {
                setState(() {
                  currentPage = page;
                });
              },
              itemCount: widget.banners.length,
              itemBuilder: (BuildContext context, int index) {
                return FractionallySizedBox(
                  widthFactor: 1,
                  child: HomeSingleBanner(banner: widget.banners[index]),
                );
              },
            ),
          ),
          SizedBox(height: styles.spacing.s8),
          DotsIndicator(
            count: widget.banners.length,
            activeIndex: currentPage,
            activeColor: styles.themeColor.blackBase,
            notActiveColor: styles.themeColor.greyMedium,
          ),
        ],
      ),
    );
  }
}
