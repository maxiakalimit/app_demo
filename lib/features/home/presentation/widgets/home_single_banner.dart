import 'package:app_demo/core/utils/extensions/styles_context_ext.dart';
import 'package:app_demo/presentations/widgets/c_text.dart';
import 'package:flutter/material.dart';

import '../../../../presentations/widgets/c_image.dart';
import '../../domain/models/home_banner.dart';

const _defaultBorderRadius = BorderRadius.all(Radius.circular(0));

class HomeSingleBanner extends StatelessWidget {
  final HomeBanner banner;

  const HomeSingleBanner({
    Key? key,
    required this.banner,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styles = context.styles();
    final size = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: _defaultBorderRadius,
          ),
          child: CImage(
            banner.image,
            width: size,
            height: size,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
            borderRadius: _defaultBorderRadius,
            color: styles.themeColor.greyBase,
            // Добавляем наложение темного фона поверх картинки, для
            // того, чтобы сделать читаемой наложенную кнопку
            gradient: LinearGradient(
              begin: styles.themeColor.blackVerticalGradient.begin,
              end: styles.themeColor.blackVerticalGradient.end,
              stops: const [0.4, 1.0],
              colors: styles.themeColor.blackVerticalGradient.colors,
            ),
          ),
        ),
        if (banner.title != null)
          Positioned(
            left: 0,
            right: 0,
            bottom: styles.spacing.s12,
            child: Container(
              color: Colors.transparent,
              padding:
                  EdgeInsets.symmetric(horizontal: styles.padding.global * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CText(
                    banner.title!,
                    color: styles.themeColor.whiteBase,
                    type: TextType.headerXXL,
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
