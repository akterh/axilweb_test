import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/entities/cart_item_etity.dart';
import '../../../../domain/repositories/cart/cart_repository.dart';

part 'cart_state.dart';
part 'cart_cubit.freezed.dart';
@injectable
class CartCubit extends Cubit<CartState> {
  final CartRepository _cartRepository;
  CartCubit(this._cartRepository) : super(const CartState());
  Future<void> loadCart() async {
    final items = await _cartRepository.getCartItems();
    emit(state.copyWith(items: items));
  }

  Future<void> addItem(CartItemEntity item) async {
    await _cartRepository.addToCart(item);
    await loadCart();
  }

  Future<void> removeItem(String id) async {
    await _cartRepository.removeFromCart(id);
    await loadCart();
  }

  Future<void> clearCart() async {
    await _cartRepository.clearCart();
    await loadCart();
  }
}
