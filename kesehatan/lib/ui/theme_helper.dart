import 'package:flutter/material.dart';

class ThemeHelper {
  // Tema Terang Kuning dengan font Helvetica
  static ThemeData lightYellowTheme() {
    return ThemeData(
      primaryColor: Colors.yellow.shade100,
      scaffoldBackgroundColor: Colors.yellow.shade50,
      appBarTheme: AppBarTheme(
        color: Colors.yellow.shade100,
        
        // Ganti textTheme dengan titleTextStyle
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontFamily: 'Helvetica',  // Pastikan ini sesuai dengan nama font di pubspec.yaml
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          color: Colors.black,
          fontFamily: 'Helvetica',
        ),
        bodyMedium: TextStyle(
          color: Colors.black,
          fontFamily: 'Helvetica',
        ),
        displayLarge: TextStyle(
          color: Colors.black,
          fontFamily: 'Helvetica',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: TextStyle(
          color: Colors.black,
          fontFamily: 'Helvetica',
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        displaySmall: TextStyle(
          color: Colors.black,
          fontFamily: 'Helvetica',
          fontSize: 20,
        ),
      ),
      
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.yellow.shade400,
      ),
      
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.yellow.shade400,
        textTheme: ButtonTextTheme.primary,
      ),
      
      fontFamily: 'Helvetica',
    );
  }
}
