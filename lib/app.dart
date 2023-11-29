import 'package:digicard/layouts/default_layout.dart';
import 'package:digicard/pages/contacts_page.dart';
import 'package:digicard/pages/home_page.dart';
import 'package:digicard/pages/qr_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class DigicardApp extends StatelessWidget {
  const DigicardApp({super.key});

  @override
  Widget build(BuildContext context) {
    // This app is designed only to work vertically, so we limit
    // orientations to portrait up and down.
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return const CupertinoApp(
        theme: CupertinoThemeData(brightness: Brightness.light),
        home: DefaultLayout(children: [
          QRPage(),
          HomePage(),
          ContactsPage(),
        ]));
  }
}
