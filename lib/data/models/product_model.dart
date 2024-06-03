import '../../domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  const ProductModel(
      {required super.id,
      required super.localId,
      required super.name,
      required super.description,
      required super.group,
      required super.setor,
      required super.price,
      required super.quantity});

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json['id'],
        localId: json['localId'],
        name: json['name'],
        description: json['description'],
        group: json['group'],
        setor: json['setor'],
        price: json['price'],
        quantity: json['quantity'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'localId': localId,
        'name': name,
        'description': description,
        'group': group,
        'setor': setor,
        'price': price,
        'quantity': quantity,
      };
}
