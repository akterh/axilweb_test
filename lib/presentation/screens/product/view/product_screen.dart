import 'package:ecom_axilweb/core/app/app_context.dart';
import 'package:ecom_axilweb/domain/entities/product_item_entity.dart';
import 'package:ecom_axilweb/presentation/screens/cart/cubit/cart_cubit.dart';
import 'package:ecom_axilweb/presentation/screens/cart/view/cart_screen.dart';
import 'package:ecom_axilweb/presentation/screens/product/cubit/product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/home_grid_product_widget.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ProductCubit>().fetchProductList();
    context.read<CartCubit>().loadCart();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, cState) {
        return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              actions: [
                Stack(
                  children: [
                    IconButton(
                      icon: const Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.black,
                        ),
                      ),
                      tooltip: 'Open shopping cart',
                      onPressed: () {
                        GetContext.to(CartScreen());
                      },
                    ),
                    Positioned(
                        right: 20,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.amber,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text((cState.items.length ?? 0).toString()),
                          ),
                        ))
                  ],
                )
              ],
              elevation: 0,
              backgroundColor: Colors.transparent,
              title: const Text(
                'Products',
                style: TextStyle(
                  color: Color(0xFF545D68),
                  fontSize: 20,
                ),
              ),
            ),
            body: BlocBuilder<ProductCubit, ProductState>(
              builder: (context, state) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      // ignore: sized_box_for_whitespace
                      const SizedBox(
                        height: 20,
                      ),
                      // ignore: sized_box_for_whitespace
                      (state.productList ?? []).isNotEmpty
                          ? GridView.builder(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              gridDelegate:
                                  const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 230,
                                childAspectRatio: 1,
                                crossAxisSpacing: 30,
                                mainAxisSpacing: 30,
                                mainAxisExtent: 200,
                              ),
                              physics: const PageScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: state.productList?.length,
                              itemBuilder: (context, index) {
                                return ProductGridWidget(
                                  product: state.productList?[index] ??
                                      ProductItemEntity(),
                                );
                              },
                            )
                          : Container(),
                    ],
                  ),
                );
              },
            ));
      },
    );
  }
}
