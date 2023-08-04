import 'package:app_demo/core/utils/extensions/styles_context_ext.dart';
import 'package:app_demo/presentations/widgets/dots_indicator.dart';
import 'package:app_demo/presentations/widgets/shimmer_container.dart';
import 'package:flutter/material.dart';

class HomeLoadingScreen extends StatelessWidget {
  const HomeLoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styles = context.styles();

    return SafeArea(
      bottom: false,
      child: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Expanded(
                  child: ShimmerContainer(
                    active: true,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: styles.themeColor.whiteBase,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: styles.spacing.s8),
                const _PaginationItem(),
              ],
            ),
          ),
          const SizedBox(height: 32.0),
          Padding(
            padding: EdgeInsets.only(left: styles.padding.global),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 28.0,
                  child: ShimmerContainer(
                    active: true,
                    child: Container(
                      width: 200,
                      height: 28.0,
                      color: styles.themeColor.greyBase,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.48,
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      4,
                      (index) => Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: ShimmerContainer(
                          active: true,
                          child: Container(
                            height: 140,
                            width:
                                MediaQuery.of(context).size.width / 1.9,
                            color: styles.themeColor.greyBase,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PaginationItem extends StatelessWidget {
  const _PaginationItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styles = context.styles();

    return DotsIndicator(
      count: 2,
      activeIndex: 0,
      activeColor: styles.themeColor.blackBase,
      notActiveColor: styles.themeColor.greyMedium,
    );
  }
}
