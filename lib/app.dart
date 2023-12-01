import 'package:digicard/layouts/default_layout.dart';
import 'package:digicard/pages/contacts_page.dart';
import 'package:digicard/pages/home_page.dart';
import 'package:digicard/pages/qr_page.dart';
import 'package:digicard/styles/styles.dart';
import 'package:flutter/cupertino.dart';
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

    return CupertinoApp(
        theme: CupertinoThemeData(
          brightness: Brightness.light,
          scaffoldBackgroundColor: CupertinoColors.white,
          textTheme: CupertinoTextThemeData(
            textStyle: GoogleFonts.montserrat(
              color: DigicardStyles.primaryColor,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
            
          ),
        ),
        home: const DefaultLayout(children: [
          QRPage(),
          HomePage(),
          ContactsPage(),
        ]));
  }
}
