import 'package:digicard/providers/navigation_provider.dart';
import 'package:digicard/providers/qr_data_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'app.dart';

void main() {
  return runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => QRCodeData()),
        ChangeNotifierProvider(create: (context) => NavigationProvider()),
      ],
      child: const DigicardApp(),
    )
  );
}
