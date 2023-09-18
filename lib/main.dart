import 'package:cv_app/src/provider/cvprovider.dart';
import 'package:cv_app/src/provider/themeprovider.dart';
import 'package:cv_app/src/view/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  CvProvider().init();
  ThemeProvider().init();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      darkTheme: ThemeData.dark(),
      theme: ThemeProvider().currenttheeme()
          ? ThemeData.dark()
          : ThemeData.light(),
    );
  }
}

// class AppRoutes {
//   AppRoutes._();
//   static const routes={
//     '/': (context) => const MyHomePage(),
//         '/editcv': (context) => const MyGitHubWebView(),
//   }
// }
