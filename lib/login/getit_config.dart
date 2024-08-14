import 'package:get_it/get_it.dart';
import 'package:test_pc/login/data/services/login_google_repository_impl.dart';
import 'package:test_pc/login/domain/repositories/login_google_repository.dart';
import 'package:test_pc/login/domain/use_cases/login_google_use_case.dart';

void getItLoginGoogle() {
  GetIt.instance.registerLazySingleton<LoginGoogleRepository>(
      () => LoginGoogleRepositoryImpl());

  GetIt.instance.registerSingleton(LoginGoogleUseCase(
      loginGoogleRepository: GetIt.instance.get<LoginGoogleRepository>()));
}
