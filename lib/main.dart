import 'package:flutter/material.dart';
import 'package:flutter_gdsc/core/utils/api_service.dart';

import 'core/utils/go_router.dart';
import 'core/utils/service_locator.dart';
import 'features/home/data/repo/home_repo_impl.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  final repo = HomeRepoImpl(getIt<ApiService>());
  var data = await repo.getNewReleases();
  data.fold(
    (l) => print(l.errorMessage),
    (r) => print(r[0].toJson()),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.dark,
    );
  }
}
