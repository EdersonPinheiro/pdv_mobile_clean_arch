import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pdv_mobile_clean_arch/domain/entities/product_entity.dart';
import 'package:pdv_mobile_clean_arch/domain/usecases/get_current_product.dart';

import '../../helpers/teste_relper.mocks.dart';

void main() {
  late GetCurrentProductUseCase getCurrentProductUseCase;
  late MockProductRepository mockProductRepository;

  setUp(() {
    mockProductRepository = MockProductRepository();
    getCurrentProductUseCase = GetCurrentProductUseCase(mockProductRepository);
  });

  const testProductDetail = ProductEntity(
    id: '1',
    name: 'Teste',
    description: 'teste',
    group: 'teste',
    setor: 'teste',
    price: 2.0,
    quantity: 2,
  );

  test('Should get current product detail from the repository', () async {
    when(mockProductRepository.getCurrentProduct())
        .thenAnswer((_) async => const Right(testProductDetail));

    final result = await getCurrentProductUseCase.execute();

    expect(result, Right(testProductDetail));
  });
}