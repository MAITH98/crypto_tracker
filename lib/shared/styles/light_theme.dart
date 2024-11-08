import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blueAccent,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    foregroundColor: Colors.black,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'Poppins',
      color: Colors.black,
      fontSize: 28,
      fontWeight: FontWeight.w600,
    ),
    titleLarge: TextStyle(
      fontFamily: 'Inter',
      color: Colors.black54,
      fontSize: 16,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Roboto',
      color: Colors.black87,
      fontSize: 16,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Lato',
      color: Colors.black54,
      fontSize: 14,
    ),
  ),
  cardColor: Colors.white,
  cardTheme: CardTheme(
    color: Colors.white,
    shadowColor: Colors.grey.withOpacity(0.1),
    elevation: 2,
    margin: const EdgeInsets.all(8),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: Colors.blueAccent,
    unselectedItemColor: Colors.black54,
  ),
  iconTheme: const IconThemeData(color: Colors.black87),
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
