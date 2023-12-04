import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'app.dart';
class QRCodeData with ChangeNotifier {
  String _data = "https://www.linkedin.com/in/wsbinette/";
  String _type = "LinkedIn";

  String get data => _data;
  String get type => _type;

  void setData(String newData) {
    _data = newData;
    notifyListeners();
  }

  void setType(String newType){
    _type = newType;
    notifyListeners();
  }
}


void main() {
  return runApp(
    ChangeNotifierProvider(
      create: (context) => QRCodeData(),
      child: const DigicardApp(),
    )
  );
}
