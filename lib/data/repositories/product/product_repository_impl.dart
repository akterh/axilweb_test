import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:ecom_axilweb/data/data_source_client/network/api_failure.dart';
import 'package:ecom_axilweb/data/model/product/product_response.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/product_item_entity.dart';
import '../../../domain/repositories/product/product_repository.dart';
import '../../data_source_client/network/api_client.dart';
import '../../data_source_client/network/api_exception.dart';
import '../../data_source_client/network/api_request.dart';
import '../../data_source_client/network/api_urls.dart';

@Injectable(as: ProductRepository)
class ProductRepositoryImpl implements ProductRepository {
  ProductRepositoryImpl({required ApiRequest apiRequest})
      : _apiRequest = apiRequest;
  final ApiRequest _apiRequest;

  @override
  Future<Either<ApiFailure, List<ProductItemEntity>>> getProducts() async {
    try {
      final result = await _apiRequest.performRequest<List<ProductResponse>>(
        url: ApiUrls.products,
        method: Method.get,
        fromJson: (json) {
          return (json as List)
              .map((e) => ProductResponse.fromJson(e as Map<String, dynamic>))
              .toList();
        },
      );
      return result.map((list) => list.map((e) => e.toEntity()).toList());
    } catch (error, stackTrace) {
      log('$stackTrace');
      return Left(ApiException.handle(error).failure);
    }
  }
}
