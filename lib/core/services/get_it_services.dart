import 'package:friut_app/core/services/firebase_auth_services.dart';
import 'package:friut_app/core/services/firestore_service.dart';
import 'package:friut_app/core/services/firestore_service_abstract.dart';
import 'package:friut_app/features/auth/data/repos/auth_repo_impl.dart';
import 'package:friut_app/features/auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetit() {
  getIt.registerSingleton<FirebaseAuthServices>(FirebaseAuthServices());
  getIt.registerSingleton<DatabaseSerivce>(FirestoreService());
  getIt.registerSingleton<AuthRepo>(AuthRepoImpl(
      firebaseAuthServices: getIt<FirebaseAuthServices>(),
      databaseSerivce: getIt<DatabaseSerivce>()));
}
