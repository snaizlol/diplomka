import 'package:diplomka/entities/di.dart';
import 'package:diplomka/entities/router/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
  register();
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'FootballApp',
      routerConfig: AppNavigation.router,
      theme: ThemeData(fontFamily: 'Montserrat'),
    );
  }
}
