import 'package:pdv_mobile_clean_arch/data/models/product_model.dart';
import 'package:pdv_mobile_clean_arch/domain/entities/movement_entity.dart';

class MovementModel extends MovementEntity {
  const MovementModel(
      {required super.id,
      required super.localId,
      required super.typeMov,
      required super.userMov,
      required super.products,
      required super.type});

  factory MovementModel.fromJson(Map<String, dynamic> json) {
    List<dynamic> productsJson = json['products'];
    List<ProductModel> products = productsJson
        .map((productJson) => ProductModel.fromJson(productJson))
        .toList();

    return MovementModel(
      id: json['id'],
      localId: json['localId'],
      typeMov: json['typeMov'],
      userMov: json['userMov'],
      products: products,
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "localId": localId,
        "typeMov": typeMov,
        'userMov': userMov,
        'products': products.map((product) => product.toJson()).toList(),
        'type': type
      };
}
