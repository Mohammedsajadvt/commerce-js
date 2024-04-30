import 'package:e_commerce/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Card(
            child: Image.network(
                    product.imageUrl,height: 150,fit: BoxFit.cover)          
          ),
        ),
        Text(
          product.name,
          style: const TextStyle(
            fontSize: 20,
            overflow: TextOverflow.ellipsis,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          product.description,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          '₹${product.price.toString()}',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
