import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pdv_mobile_clean_arch/core/error/exception.dart';

import '../../core/constants/constants.dart';
import '../models/product_model.dart';

abstract class ProductRemoteDataSource {
  Future<ProductModel> getCurrentProduct();
}

class ProductRemoteDataSourceImpl extends ProductRemoteDataSource {
  final http.Client client;
  ProductRemoteDataSourceImpl({required this.client});

  @override
  Future<ProductModel> getCurrentProduct() async {
    final response = await client.post(Uri.parse('${ApiClient.baseUrl}/get-all-product'),
              headers: ApiClient.headers);

    if (response.statusCode == 200) {
      return ProductModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
