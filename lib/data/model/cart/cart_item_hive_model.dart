import 'package:hive/hive.dart';

import '../../../domain/entities/cart_item_etity.dart';

part 'cart_item_hive_model.g.dart';
@HiveType(typeId: 0)
class CartItemHiveModel extends HiveObject {
  @HiveField(0)
  String id;

  @HiveField(1)
  String name;

  @HiveField(2)
  double price;

  @HiveField(3)
  String imageUrl;

  @HiveField(4)
  int quantity;

  CartItemHiveModel({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.quantity,
  });

  // Mapper
  CartItemEntity toEntity() => CartItemEntity(
    id: id,
    name: name,
    price: price,
    imageUrl: imageUrl,
    quantity: quantity,
  );

  factory CartItemHiveModel.fromEntity(CartItemEntity entity) {
    return CartItemHiveModel(
      id: entity.id,
      name: entity.name,
      price: entity.price,
      imageUrl: entity.imageUrl,
      quantity: entity.quantity,
    );
  }
}
