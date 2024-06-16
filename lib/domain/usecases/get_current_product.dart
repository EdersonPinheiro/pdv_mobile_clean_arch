import 'package:dartz/dartz.dart';

import 'package:pdv_mobile_clean_arch/domain/entities/product_entity.dart';
import 'package:pdv_mobile_clean_arch/domain/repositories/product_repository.dart';
import '../../core/error/failure.dart';

class GetCurrentProductUseCase {
  final ProductRepository productRepository;

  GetCurrentProductUseCase(this.productRepository);

  Future<Either<Failure, ProductEntity>> execute() {
    return productRepository.getCurrentProduct();
  }
}
