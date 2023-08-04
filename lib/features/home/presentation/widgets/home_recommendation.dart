import 'package:app_demo/core/utils/extensions/styles_context_ext.dart';
import 'package:app_demo/domain/product/models/product.dart';
import 'package:app_demo/presentations/widgets/products_slider.dart';
import 'package:flutter/material.dart';

class HomeRecommendation extends StatelessWidget {
  final List<Product> products;
  const HomeRecommendation({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    final styles = context.styles();

    return ProductSlider(
      title: 'Recommendations',
      products: products,
      padding: styles.padding.global,
      titlePadding: const EdgeInsets.only(bottom: 20.0),
    );
  }
}
