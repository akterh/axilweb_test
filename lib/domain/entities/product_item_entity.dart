import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class ProductItemEntity extends Equatable {
  ProductItemEntity({
    this.id,
    this.name,
    this.description,
    this.price,
    this.urlToImage,
  });

  String? id;
  String? name;
  String? description;
  double? price;
  String? urlToImage;

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        name,
        urlToImage,
      ];
}
