import 'package:app_demo/core/utils/extensions/styles_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

const _defaultBorderRadius = BorderRadius.all(Radius.circular(4.0));

///Виджет для создания эффекта переливания пустого элемента
class ShimmerContainer extends StatelessWidget {
  final Widget child;
  final bool active;
  final Color? color;

  const ShimmerContainer({
    Key? key,
    required this.child,
    required this.active,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styles = context.styles();

    return active
        ? Shimmer.fromColors(
            baseColor: styles.themeColor.greyLight,
            period: const Duration(milliseconds: 800),
            highlightColor:
                color ?? styles.themeColor.greyLight.withOpacity(0.5),
            child: ClipRRect(
              borderRadius: _defaultBorderRadius,
              child: Container(
                decoration: BoxDecoration(
                  color: color,
                ),
                child: child,
              ),
            ),
          )
        : child;
  }
}
