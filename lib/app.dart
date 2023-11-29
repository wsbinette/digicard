import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      home: DigicardHomePage(),
    );
  }
}

class DigicardHomePage extends StatelessWidget {
  const DigicardHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.qrcode),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.at),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_2_square_stack),
          ),
        ],
        backgroundColor: Colors.indigo[900],
        inactiveColor: Colors.indigo[200]!,
        activeColor: Colors.white,
        iconSize: 25,
        currentIndex: 1,
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return Center(
              child: Text('Content of tab $index'),
            );
          },
        );
      },
    );
  }
}
