import 'package:digicard/layouts/default_layout.dart';
import 'package:digicard/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class DigicardApp extends StatelessWidget {
  const DigicardApp({super.key});

  @override
  Widget build(BuildContext context) {
    // This app is designed only to work vertically, so we limit
    // orientations to portrait up and down.
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return MaterialApp(
        theme: ThemeData(
          brightness: Brightness.light,
          scaffoldBackgroundColor: Colors.white,
          fontFamily: GoogleFonts.montserrat().fontFamily,
          textTheme: TextTheme(
            bodyMedium: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: DigicardStyles.primaryColor,
            ),
          ),
          
        ),
        home: const DefaultLayout(),
      );
  }
}