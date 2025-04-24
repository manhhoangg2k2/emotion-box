  import 'package:flutter/material.dart';
  import 'package:flutter_svg/svg.dart';
  import 'package:google_fonts/google_fonts.dart';

  void main() {
    runApp(const MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: '[hwaG] Jar of Thoughts',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: GoogleFonts.quicksand().fontFamily,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
      );
    }
  }

  class SplashScreen extends StatelessWidget {
    const SplashScreen({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFFBDCE2), Color(0xFFD9C6F3)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Hũ SVG
              SvgPicture.asset(
                'assets/svg/jar_outline.svg',
                width: 200,
                height: 500,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 24),

              // Icon trái tim
              const Icon(Icons.favorite, color: Colors.pinkAccent, size: 32),

              const SizedBox(height: 12),

              // Dòng tagline
              Text(
                'Feel. Write. Let go.',
                style: GoogleFonts.quicksand(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

