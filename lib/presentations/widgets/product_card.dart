import 'package:app_demo/core/utils/extensions/styles_context_ext.dart';
import 'package:app_demo/core/utils/format.dart';
import 'package:app_demo/domain/product/models/product.dart';
import 'package:flutter/material.dart';

import 'c_image.dart';
import 'c_text.dart';

/// Виджет карточки товара, используется в каталоге
class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cardHeight = MediaQuery.of(context).size.height * 0.48;

    if (MediaQuery.of(context).size.height <
        MediaQuery.of(context).size.width) {
      cardHeight = MediaQuery.of(context).size.height * 0.7;
    }

    return Container(
      height: cardHeight,
      constraints: const BoxConstraints(
        maxHeight: double.infinity,
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _ProductCardImage(
                  product: product,
                ),
              ),
              _ProductCardDetails(product: product),
            ],
          ),
        ],
      ),
    );
  }
}

const BorderRadius _defaultImageBorderRadius =
    BorderRadius.all(Radius.circular(0.0));

class _ProductCardImage extends StatelessWidget {
  final Product product;

  const _ProductCardImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: _defaultImageBorderRadius,
      ),
      child: ClipRRect(
        borderRadius: _defaultImageBorderRadius,
        child: PageView(
          allowImplicitScrolling: true,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(
            product.images.length,
            (index) => CImage(
              product.images[index],
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
        ),
      ),
    );
  }
}

class _ProductCardDetails extends StatelessWidget {
  final Product product;

  const _ProductCardDetails({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styles = context.styles();

    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: styles.spacing.s6),
          CText(
            product.brandName,
            type: TextType.textM,
            color: styles.themeColor.blackBase,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: styles.spacing.s2),
          CText(
            Format.price(product.price.toString()),
            type: TextType.headerXS,
            color: styles.themeColor.blackBase,
          ),
        ],
      ),
    );
  }
}
