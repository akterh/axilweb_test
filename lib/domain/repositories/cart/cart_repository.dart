import '../../entities/cart_item_etity.dart';

abstract class CartRepository {
  Future<void> addToCart(CartItemEntity item);

  Future<void> removeFromCart(String id);

  Future<List<CartItemEntity>> getCartItems();

  Future<void> clearCart();
}
