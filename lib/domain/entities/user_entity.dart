import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String id;
  final String localId;
  final String fullname;
  final String email;
  final String setor;

  const UserEntity(
      {required this.id,
      required this.localId,
      required this.fullname,
      required this.email,
      required this.setor});

  @override
  List<Object?> get props => [id, localId, fullname, email, setor];
}
