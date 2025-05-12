import 'package:dartz/dartz.dart';
import 'package:ecom_axilweb/data/data_source_client/network/api_failure.dart';
import 'package:ecom_axilweb/data/model/product/product_response.dart';
import 'package:ecom_axilweb/domain/entities/product_item_entity.dart';
import 'package:ecom_axilweb/domain/repositories/product/product_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetProductList {
  final ProductRepository repository;

  GetProductList(this.repository);

  Future<Either<ApiFailure, List<ProductItemEntity>>> execute({int page = 1}) {
    return repository.getProducts();
  }
}
