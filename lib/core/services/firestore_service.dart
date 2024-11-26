import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:friut_app/core/services/firestore_service_abstract.dart';

import 'package:friut_app/features/auth/data/models/user_model.dart';
import 'package:friut_app/features/auth/domain/entity/user_entity.dart';

class FirestoreService implements DatabaseSerivce {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData(
      {required String path,
      required Map<String, dynamic> data,
      String? documentId}) async {
    if (documentId != null) {
      await firestore.collection("$path").doc(documentId).set(data);
    } else {
      await firestore.collection("$path").add(data);
    }
  }

  @override
  Future<Map<String, dynamic>> getData(
      {required String path, required String documentId}) async {
    var data = await firestore.collection(path).doc(documentId).get();

    return data.data()!;
  }

  @override
  Future<bool> checkIfDataExists(
      {required String path, required String documentId}) async {
    var data = await firestore.collection(path).doc(documentId).get();
    return data.exists;
  }
}