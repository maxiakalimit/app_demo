import 'dart:ui';

import 'package:app_demo/core/utils/extensions/styles_context_ext.dart';
import 'package:app_demo/domain/product/models/product.dart';
import 'package:app_demo/presentations/widgets/product_card.dart';
import 'package:flutter/material.dart';

import 'c_text.dart';
import 'shimmer_container.dart';

class ProductSlider extends StatelessWidget {
  /// Если null, тогда заголовок не отрисовывается
  final String? title;
  final List<Product> products;
  final double _padding;
  final EdgeInsets titlePadding;

  const ProductSlider({
    Key? key,
    required this.title,
    required this.products,
    double? padding,
    this.titlePadding = const EdgeInsets.symmetric(vertical: 20),
  })  : _padding = padding ?? 0.0,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final styles = context.styles();
    final size = MediaQuery.of(context).size;
    var itemWidth = size.width / 1.9;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.06, 0.1],
          colors: styles.themeColor.whiteVerticalGradient.colors,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                width: double.maxFinite,
                padding: titlePadding,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: const [0.3, 1.0],
                    colors: [
                      styles.themeColor.white75,
                      styles.themeColor.whiteBase,
                    ],
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: _padding),
                  child: title == null
                      ? null
                      : CText(
                          title ?? '',
                          type: TextType.headerL,
                        ),
                ),
              ),
            ),
          ),
          Container(
            color: styles.themeColor.whiteBase,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const AlwaysScrollableScrollPhysics(
                parent: BouncingScrollPhysics(),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...List.generate(
                    products.length,
                    (index) => Padding(
                      padding: EdgeInsets.only(
                        left: index == 0 ? _padding : 0.0,
                      ),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: itemWidth,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(right: styles.spacing.s2),
                          child: ProductCard(
                            product: products[index],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: styles.padding.global),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
