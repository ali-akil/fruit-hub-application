import 'dart:convert';

import 'package:friut_app/constans.dart';
import 'package:friut_app/core/services/shared_prefrence_singlton.dart';
import 'package:friut_app/features/auth/data/models/user_model.dart';
import 'package:friut_app/features/auth/domain/entity/user_entity.dart';

UserEntity getUser() {
  var jsonString = Prefs.getString(kUserData);
  var userEntity = UserModel.fromJson(jsonDecode(jsonString!));
  return userEntity;
}
