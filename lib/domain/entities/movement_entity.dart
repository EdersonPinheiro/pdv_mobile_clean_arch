import 'package:equatable/equatable.dart';

import '../../data/models/product_model.dart';

class MovementEntity extends Equatable {
  final String id;
  final String localId;
  final String typeMov;
  final String userMov;
  final List<ProductModel> products;
  final bool type;

  const MovementEntity(
      {required this.id,
      required this.localId,
      required this.typeMov,
      required this.userMov,
      required this.products,
      required this.type});

  @override
  List<Object?> get props => [id, localId, typeMov, userMov, products, type];
}
