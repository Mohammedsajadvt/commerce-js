import 'package:e_commerce/data/model/product_model.dart';
import 'package:e_commerce/presentation/product/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductGridview extends StatelessWidget {
  const ProductGridview({
    super.key,
    required this.products,
  });

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 3,
        mainAxisSpacing: 3 / 4,
        childAspectRatio: 0.7,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductCard(products[index]);
      },
    );
  }
}
