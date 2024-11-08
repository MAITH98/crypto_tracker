import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.blueAccent,
  scaffoldBackgroundColor: const Color(0xFF121212),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF1F1F1F),
    foregroundColor: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'Poppins',
      color: Colors.white,
      fontSize: 28,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: TextStyle(
      fontFamily: 'Inter',
      color: Colors.white70,
      fontSize: 16,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Roboto',
      color: Colors.white,
      fontSize: 16,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Lato',
      color: Colors.white70,
      fontSize: 14,
    ),
  ),
  cardColor: const Color(0xFF1E1E1E),
  cardTheme: CardTheme(
    color: const Color(0xFF1E1E1E),
    shadowColor: Colors.black.withOpacity(0.2),
    elevation: 2,
    margin: const EdgeInsets.all(8),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFF1E1E1E),
    selectedItemColor: Colors.blueAccent,
    unselectedItemColor: Colors.white70,
  ),
  iconTheme: const IconThemeData(color: Colors.white),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.blueAccent,
      foregroundColor: Colors.white,
      textStyle:
          const TextStyle(fontFamily: 'Roboto', fontWeight: FontWeight.w500),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ),
);
