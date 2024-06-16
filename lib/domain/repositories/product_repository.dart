import 'package:dartz/dartz.dart';

import 'package:pdv_mobile_clean_arch/domain/entities/product_entity.dart';
import '../../core/error/failure.dart';

abstract class ProductRepository {
  Future<Either<Failure, ProductEntity>> getCurrentProduct();
}