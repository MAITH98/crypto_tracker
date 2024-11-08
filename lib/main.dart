import 'package:crypto_tracker/features/home/View/home_screen.dart';
import 'package:crypto_tracker/shared/styles/dark_theme.dart';
import 'package:crypto_tracker/shared/styles/light_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode
          .system, // Uses system setting to toggle between day and night
      theme: lightTheme,
      darkTheme: darkTheme,
      home: HomeScreen(),
    );
  }
}
