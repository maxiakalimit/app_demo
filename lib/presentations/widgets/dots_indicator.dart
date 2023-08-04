import 'package:app_demo/core/utils/extensions/styles_context_ext.dart';
import 'package:flutter/material.dart';

enum DotIndicatorType { circle, rectangle }

///Виджет для отображения индикатора с точками
///для показа позиции, например, для [PageView]
class DotsIndicator extends StatelessWidget {
  ///Количество точек
  final int count;

  ///Индекс текущего положения активной точки
  final int activeIndex;
  final double? width;
  final double? height;
  final Color? activeColor;
  final Color? notActiveColor;
  final DotIndicatorType type;

  const DotsIndicator({
    Key? key,
    required this.count,
    required this.activeIndex,
    this.width,
    this.height,
    this.activeColor,
    this.notActiveColor,
    this.type = DotIndicatorType.circle,
  })  : assert(count > 0, activeIndex > 0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final styles = context.styles();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 3),
          height: 8.0,
          width: 8.0,
          decoration: BoxDecoration(
            color: activeIndex == index
                ? activeColor ?? styles.themeColor.blackBase
                : notActiveColor ?? styles.themeColor.accentLight,
            shape: type == DotIndicatorType.circle
                ? BoxShape.circle
                : BoxShape.rectangle,
          ),
        );
      }),
    );
  }
}
