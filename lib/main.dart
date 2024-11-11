import 'package:crypto_tracker/features/home/View/home_screen.dart';
import 'package:crypto_tracker/shared/styles/dark_theme.dart';
import 'package:crypto_tracker/shared/styles/light_theme.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system, // Auto switch based on system theme setting
      theme: lightTheme, // Light theme
      darkTheme: darkTheme, // Dark theme
      home: HomeScreen(), // Starting screen
    );
  }
}
