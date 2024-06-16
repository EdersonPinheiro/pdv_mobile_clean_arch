import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'package:pdv_mobile_clean_arch/core/constants/constants.dart';
import 'package:pdv_mobile_clean_arch/core/error/exception.dart';

import 'package:pdv_mobile_clean_arch/data/data_sources/remote_data_source.dart';
import 'package:pdv_mobile_clean_arch/data/models/product_model.dart';
import '../../helpers/dummy_data/json_reader.dart';
import '../../helpers/teste_relper.mocks.dart';

void main() {
  late MockHttpClient mockHttpClient;
  late ProductRemoteDataSourceImpl productRemoteDataSourceImpl;

  setUp(() {
    mockHttpClient = MockHttpClient();
    productRemoteDataSourceImpl =
        ProductRemoteDataSourceImpl(client: mockHttpClient);
  });

  group('get current product', () {
    test('should return a product model when the response code is 200',
        () async {
      when(mockHttpClient.post(
              Uri.parse('${ApiClient.baseUrl}/get-all-product'),
              headers: ApiClient.headers))
          .thenAnswer((_) async => http.Response(
              readJson('helpers/dummy_data/dummy_product_response.json'), 200));

      final result = await productRemoteDataSourceImpl.getCurrentProduct();

      expect(result, isA<ProductModel>());
    });

    test(
        'should throw a server exception when the response code is 404 or other',
        () async {
      when(mockHttpClient.post(Uri.parse('${ApiClient.baseUrl}/get-all-product'),
              headers: ApiClient.headers))
          .thenAnswer((_) async => http.Response('Not found', 404));

      final result = productRemoteDataSourceImpl.getCurrentProduct();

      expect(result, throwsA(isA<ServerException>()));
    });
  });
}
