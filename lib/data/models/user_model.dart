import 'package:pdv_mobile_clean_arch/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel(
      {required super.id,
      required super.localId,
      required super.fullname,
      required super.email,
      required super.setor});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['id'],
        localId: json['localId'],
        fullname: json['fullname'],
        email: json['email'],
        setor: json['setor'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'localId': localId,
        'fullname': fullname,
        'email': email,
        'setor': setor
      };
}
