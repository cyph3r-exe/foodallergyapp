import 'package:flutter/material.dart';
import 'package:foodallergy/pages/home.dart';
import 'package:foodallergy/pages/loginsignup.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Recommendations',
      home: LoginSignUp(),
      routes: {
        '/login': (context) => const LoginSignUp(),
        '/home': (context) => const HomePage(),
      },

      //Theme data
      theme:    ThemeData(
        textTheme: TextTheme(
          headlineLarge: GoogleFonts.fjallaOne(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          headlineMedium: GoogleFonts.fjallaOne(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          headlineSmall: GoogleFonts.fjallaOne(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: GoogleFonts.libreBaskerville(
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
          bodyMedium: GoogleFonts.libreBaskerville(
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
          bodySmall: GoogleFonts.libreBaskerville(
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    ); 
  }
}