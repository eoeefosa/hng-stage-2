import 'package:cv_app/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
    );
  }
}
