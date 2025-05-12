import 'package:ecom_axilweb/presentation/screens/cart/cubit/cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber,
            title: Text("Cart"),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: state.items.toSet().length,
                      itemBuilder: (_, index) {
                        return Row(
                          children: [
                            Image.network(
                              state.items[index].imageUrl,
                              height: 100,
                              width: 100,
                            ),
                            Expanded(child: Text(state.items[index].name)),
                            Spacer(),
                            Text(
                                "${state.items[index].price} * ${state.items.where((e) => e.id == state.items[index].id).toList().length}"),
                            IconButton(
                                onPressed: () {
                                  context
                                      .read<CartCubit>()
                                      .removeItem(state.items[index].id);
                                },
                                icon: Icon(Icons.delete))
                          ],
                        );
                      }),
                ),
                Divider(),
                Row(
                  children: [
                    Text("Total"),
                    Spacer(),
                    Text(state.items
                        .fold<double>(
                          0.0,
                          (sum, item) => sum + item.price,
                        )
                        .toString())
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
