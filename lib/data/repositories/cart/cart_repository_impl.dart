
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/cart_item_etity.dart';
import '../../../domain/repositories/cart/cart_repository.dart';
import '../../model/cart/cart_item_hive_model.dart';


@LazySingleton(as: CartRepository)
class CartRepositoryImpl implements CartRepository {
  static const _cartBox = 'cart';

  @override
  Future<void> addToCart(CartItemEntity item) async {
    final box = Hive.box<CartItemHiveModel>(_cartBox);
    box.put(item.id, CartItemHiveModel.fromEntity(item));
  }

  @override
  Future<void> removeFromCart(String id) async {
    final box = Hive.box<CartItemHiveModel>(_cartBox);
    box.delete(id);
  }

  @override
  Future<List<CartItemEntity>> getCartItems() async {
    final box = Hive.box<CartItemHiveModel>(_cartBox);
    return box.values.map((e) => e.toEntity()).toList();
  }

  @override
  Future<void> clearCart() async {
    final box = Hive.box<CartItemHiveModel>(_cartBox);
    await box.clear();
  }
}
