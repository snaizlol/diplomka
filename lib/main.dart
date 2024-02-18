import 'package:diplomka/entities/router/router.dart';
import 'package:diplomka/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: ThemeData.dark(),
    );
  }
}

class FotbalkeeThemeExtension extends ThemeExtension<FotbalkeeThemeExtension> {
  const FotbalkeeThemeExtension({required this.background});
  final Color background;

  @override
  ThemeExtension<FotbalkeeThemeExtension> copyWith({Color? background}) =>
      FotbalkeeThemeExtension(background: background ?? this.background);

  @override
  ThemeExtension<FotbalkeeThemeExtension> lerp(
      covariant ThemeExtension<FotbalkeeThemeExtension>? other, double t) {
    // TODO: implement lerp
    throw UnimplementedError();
  }
}

Map<String, ThemeData> themes = {
  'light': ThemeData(
      scaffoldBackgroundColor: Colors.white,
      extensions: const <ThemeExtension<dynamic>>[
        FotbalkeeThemeExtension(background: Colors.blue)
      ]),
  'dark': ThemeData(
      scaffoldBackgroundColor: Colors.black,
      extensions: const <ThemeExtension<dynamic>>[
        FotbalkeeThemeExtension(background: Colors.red)
      ])
};
