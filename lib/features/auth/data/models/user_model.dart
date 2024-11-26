import 'package:firebase_auth/firebase_auth.dart';
import 'package:friut_app/features/auth/domain/entity/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({required super.name, required super.email, required super.uId});
  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
        name: user.displayName ?? "", email: user.email ?? "", uId: user.uid);
  }

  Map<String, dynamic> toMap() {
    return {'name': name, 'email': email, 'uId': uId};
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        name: json['name'], email: json['email'], uId: json['uId']);
  }
}
