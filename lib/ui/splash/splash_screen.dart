import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JarOfThoughtsSplash extends StatelessWidget {
  const JarOfThoughtsSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFBDCE2), Color(0xFFD9C6F3)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Hũ thủy tinh (vector tạm thời)
            Container(
              width: 180,
              height: 220,
              child: Image.asset(
                'assets/jar_outline.png', // Vẽ vector đơn giản hoặc export SVG
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "Jar of\nThoughts",
              textAlign: TextAlign.center,
              style: GoogleFonts.playfairDisplay(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 40),
            Icon(Icons.favorite, color: Colors.pinkAccent, size: 28),
            const SizedBox(height: 8),
            Text(
              "Feel. Write. Let go.",
              style: GoogleFonts.quicksand(
                fontSize: 16,
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
