import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/product_item_entity.dart';

part 'product_response.freezed.dart';

part 'product_response.g.dart';

@freezed
class ProductResponse with _$ProductResponse {
  const factory ProductResponse({
    required int id,
    required String title,
    required double price,
    required String description,
    required String image,
    required Rating rating,
  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}

enum Category { ELECTRONICS, JEWELERY, MEN_S_CLOTHING, WOMEN_S_CLOTHING }

final categoryValues = EnumValues({
  "electronics": Category.ELECTRONICS,
  "jewelery": Category.JEWELERY,
});

@freezed
class Rating with _$Rating {
  const factory Rating({
    required double rate,
    required int count,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}

extension ProductResponseMapper on ProductResponse {
  ProductItemEntity toEntity() {
    return ProductItemEntity(
      id: id.toString(),
      name: title,
      description: description,
      price: price,
      urlToImage: image,
    );
  }
}
class ProductListResponse {
  final List<ProductResponse> products;

  ProductListResponse({required this.products});

  factory ProductListResponse.fromJson(List<dynamic> json) =>
      ProductListResponse(
        products: json.map((e) => ProductResponse.fromJson(e)).toList(),
      );
}