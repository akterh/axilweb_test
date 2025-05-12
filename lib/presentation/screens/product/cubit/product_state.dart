part of 'product_cubit.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    List<ProductItemEntity>? productList,
  }) = _InitialProductState;
}
