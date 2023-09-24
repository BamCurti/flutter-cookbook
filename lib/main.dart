import 'package:flutter/material.dart';
import 'package:cookbook/pages/main_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: const MainPage(),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            background: const Color.fromRGBO(32, 26, 24, 1),
            seedColor: const Color.fromRGBO(32, 26, 24, 1)),
      ),
    );
  }
}
