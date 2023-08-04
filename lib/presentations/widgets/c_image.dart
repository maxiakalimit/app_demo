import 'package:app_demo/core/utils/extensions/styles_context_ext.dart';
import 'package:app_demo/presentations/widgets/shimmer_container.dart';
import 'package:flutter/material.dart';

class CImage extends StatelessWidget {
  final String image;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final AlignmentGeometry? alignment;

  const CImage(
      this.image, {
        super.key,
        this.height,
        this.width,
        this.fit,
        this.alignment,
      });

  @override
  Widget build(BuildContext context) {
    final styles = context.styles();

    return Container(
      color: styles.themeColor.greyLight,
      width: width,
      height: height,
      child: Image.network(
        image,
        height: height,
        width: width,
        fit: fit,
        alignment: alignment ?? Alignment.center,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return ShimmerContainer(
            active: true,
            color: styles.themeColor.whiteBase,
            child: SizedBox(
              width: width,
              height: height,
            ),
          );
        },
        errorBuilder: (context, _, __) {
          return Container(color: styles.themeColor.greyLight);
        },
      ),
    );
  }
}
