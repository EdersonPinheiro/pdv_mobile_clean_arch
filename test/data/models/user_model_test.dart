import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:pdv_mobile_clean_arch/data/models/user_model.dart';
import 'package:pdv_mobile_clean_arch/domain/entities/user_entity.dart';

import '../../helpers/dummy_data/json_reader.dart';

void main() {
  const testUserModel = UserModel(
      id: '1',
      localId: '1',
      fullname: 'fullname',
      email: 'email',
      setor: 'setor');

  test('should be a subclass of user entity', () async {
    expect(testUserModel, isA<UserEntity>());
  });

  test('should return json map a valid model from json', () async {
    final Map<String, dynamic> jsonMap =
        json.decode(readJson('helpers/dummy_data/dummy_user_response.json'));

    final result = UserModel.fromJson(jsonMap);

    expect(result, equals(testUserModel));
  });

  test('should return json map a valid model to json', () async {
    final result = testUserModel.toJson();

    final expectedJson = {
      "id": "1",
      "localId": "1",
      "fullname": "fullname",
      "email": "email",
      "setor": "setor"
    };

    expect(result, equals(expectedJson));
  });
}
