import 'package:ecom_axilweb/domain/entities/cart_item_etity.dart';
import 'package:ecom_axilweb/presentation/screens/cart/cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/entities/product_item_entity.dart';

class ProductGridWidget extends StatelessWidget {
  final ProductItemEntity product;

  const ProductGridWidget({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(
                  0.2,
                ),
                spreadRadius: 3.0,
                blurRadius: 5.0,
              ),
            ],
          ),
        ),
        Positioned(
          left: 25,
          top: 15,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(75),
            // ignore: sized_box_for_whitespace
            child: Container(
              height: 120,
              width: 120,
              child: Image.network(
                product.urlToImage ?? "",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
            left: 50,
            top: 50,
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white.withOpacity(.3)),
              child: IconButton(
                onPressed: () {
                  context.read<CartCubit>().addItem(CartItemEntity(
                      id: product.id ?? "",
                      name: product.name ?? "",
                      price: product.price ?? 0.0,
                      imageUrl: product.urlToImage ?? "",
                      quantity: 1));
                },
                icon: Icon(
                  Icons.add,
                  size: 40,
                ),
              ),
            )),
        Positioned(
          right: 30,
          top: 150,
          // ignore: sized_box_for_whitespace
          child: Container(
            height: 50,
            width: 110,
            //color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '\$${product.price?.toStringAsFixed(2)}'.toString(),
                  style: const TextStyle(
                    color: Color(0xFFF17532),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: Text(
                    product.name ?? "",
                    style: const TextStyle(
                      color: Color(0xFF575E67),
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
