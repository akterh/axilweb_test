
import 'package:equatable/equatable.dart';

class CartItemEntity extends Equatable {
  final String id;
  final String name;
  final double price;
  final String imageUrl;
  final int quantity;

  const CartItemEntity({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.quantity,
  });

  @override
  List<Object?> get props => [id, name, price, imageUrl, quantity];
}
