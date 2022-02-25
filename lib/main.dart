import 'package:cv_creator/config/routes/app_router.dart';
import 'package:cv_creator/config/routes/app_router.gr.dart';
import 'package:cv_creator/presentation/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppRouter? appRouter=AppRouter();
    
    return MaterialApp.router(
      routeInformationParser: appRouter!.defaultRouteParser(), 
      routerDelegate: appRouter!.delegate()
    );
  }
}