import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final String id;
  final String localId;
  final String name;
  final String description;
  final String group;
  final String setor;
  final double price;
  final int quantity;

  const ProductEntity(
      {required this.id,
      required this.localId,
      required this.name,
      required this.description,
      required this.group,
      required this.setor,
      required this.price,
      required this.quantity});
      
  @override
  List<Object?> get props =>
      [id, localId, name, description, group, setor, price, quantity];
}
