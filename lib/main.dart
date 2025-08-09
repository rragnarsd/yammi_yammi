import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yammi_yammi/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yammi Yammi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: GoogleFonts.lexendMegaTextTheme(),
      ),
      home: LandingPage(),
    );
  }
}
