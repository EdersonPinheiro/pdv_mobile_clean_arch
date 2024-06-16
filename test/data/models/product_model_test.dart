import 'dart:convert';
import 'package:flutter_test/flutter_test.dart';

import 'package:pdv_mobile_clean_arch/data/models/product_model.dart';
import 'package:pdv_mobile_clean_arch/domain/entities/product_entity.dart';

import '../../helpers/dummy_data/json_reader.dart';

void main() {
  const testProductModel = ProductModel(
    id: '1',
    name: 'Teste',
    description: 'teste',
    group: 'teste',
    setor: 'teste',
    price: 2.0,
    quantity: 2,
  );

  test('should be a subclass of product entity', () async {
    expect(testProductModel, isA<ProductEntity>());
  });

  test('should return a valid model from json', () async {
    final Map<String, dynamic> jsonMap =
        json.decode(readJson('helpers/dummy_data/dummy_product_response.json'));

    final result = ProductModel.fromJson(jsonMap);

    expect(result, equals(testProductModel));
  });

  test('should return json map a valid model to json', () async {
    final result = testProductModel.toJson();

    final expectedJson = {
      "id": "1",
      "name": "Teste",
      "description": "teste",
      "group": "teste",
      "setor": "teste",
      "price": 2.0,
      "quantity": 2
    };

    expect(result, equals(expectedJson));
  });
}
