import 'package:dashboard_admin_app/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF6A5ACD),
            primary: const Color(0xFF6A5ACD),
            secondary: const Color(0xFFFF6B6B),
            surface: Colors.white),
        textTheme: GoogleFonts.poppinsTextTheme(),
        appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFF6A5ACD),
            elevation: 0,
            centerTitle: false),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF4F7FA),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.white,
            selectedItemColor: const Color(0xFF6A5ACD),
            unselectedItemColor: Colors.grey[400],
            elevation: 10,
            showUnselectedLabels: false),
      ),
      home: const MainScreen(),
    );
  }
}
