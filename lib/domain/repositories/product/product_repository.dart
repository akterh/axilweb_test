import 'package:dartz/dartz.dart';
import 'package:ecom_axilweb/data/data_source_client/network/api_failure.dart';
import 'package:ecom_axilweb/data/model/product/product_response.dart';

import '../../entities/product_item_entity.dart';

abstract class ProductRepository {
  Future<Either<ApiFailure, List<ProductItemEntity>>> getProducts();
}
