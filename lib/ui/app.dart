import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:realestateapp/ui/nav/navigation.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Real Estate App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orangeAccent,
          surfaceTint: Colors.white,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
        ),
        useMaterial3: true,
        textTheme: TextTheme(
          bodyLarge: GoogleFonts.poppins(),
          bodyMedium: GoogleFonts.poppins(),
          bodySmall: GoogleFonts.poppins(),
          titleSmall: GoogleFonts.poppins(),
          titleLarge: GoogleFonts.poppins(),
        ),
      ),
      home: const Navigation(),
    );
  }
}
