import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;

import 'package:pdv_mobile_clean_arch/domain/repositories/product_repository.dart';
import 'package:pdv_mobile_clean_arch/domain/usecases/get_current_product.dart';

@GenerateMocks(
  [ProductRepository, GetCurrentProductUseCase],
  customMocks: [MockSpec<http.Client>(as: #MockHttpClient)],
)
void Main() {}