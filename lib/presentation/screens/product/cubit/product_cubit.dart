import 'dart:developer';

import 'package:ecom_axilweb/domain/entities/product_item_entity.dart';
import 'package:ecom_axilweb/domain/usecases/get_product_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:ecom_axilweb/data/model/product/product_response.dart';

import '../../../../domain/repositories/product/product_repository.dart';

part 'product_state.dart';

part 'product_cubit.freezed.dart';

@injectable
class ProductCubit extends Cubit<ProductState> {
  ProductCubit({required this.getProductList}) : super(const ProductState());

  final GetProductList getProductList;

  void fetchProductList() async {
    final response = await getProductList.execute();
    response.fold(
      (failure) {
        log("SOmething went wrong");
      },
      (data) {
        emit(state.copyWith(productList: data));
      },
    );
  }
}
