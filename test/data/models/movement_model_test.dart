import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';

import 'package:pdv_mobile_clean_arch/data/models/movement_model.dart';
import 'package:pdv_mobile_clean_arch/data/models/product_model.dart';
import 'package:pdv_mobile_clean_arch/domain/entities/movement_entity.dart';

import '../../helpers/dummy_data/json_reader.dart';

void main() {
  final List<ProductModel> productList = [
    const ProductModel(
      id: '1',
      name: 'Teste',
      description: 'teste',
      group: 'teste',
      setor: 'teste',
      price: 2.0,
      quantity: 2,
    )
  ];

  final testMovementModel = MovementModel(
      id: '1',
      localId: '1',
      typeMov: 'Pix',
      userMov: 'userMov',
      products: productList,
      type: true);

  test('should be a subclass of movement entity ', () async {
    expect(testMovementModel, isA<MovementEntity>());
  });

  test('should be a valid model from json', () async {
    final Map<String, dynamic> jsonMap = json
        .decode(readJson('helpers/dummy_data/dummy_movement_response.json'));

    final result = MovementModel.fromJson(jsonMap);

    expect(result, equals(testMovementModel));
  });

  test('should return a valid model to json', () async {
    final result = testMovementModel.toJson();

    final expectingJsonMap = {
      "id": "1",
      "localId": "1",
      "typeMov": "Pix",
      "userMov": "userMov",
      "products": [
        {
          "id": "1",
          "name": "Teste",
          "description": "teste",
          "group": "teste",
          "setor": "teste",
          "price": 2.0,
          "quantity": 2
        }
      ],
      "type": true
    };

    expect(result, equals(expectingJsonMap));
  });
}
