import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QRCodeData with ChangeNotifier {
  String _data = "https://www.linkedin.com/in/wsbinette/";
  String _type = "LinkedIn";
  IconData _icon = FontAwesomeIcons.linkedin;

  String get data => _data;
  String get type => _type;
  IconData get icon => _icon;

  void setData(String newData) {
    _data = newData;
    notifyListeners();
  }

  void setType(String newType) {
    _type = newType;
    notifyListeners();
  }

  void setIcon(IconData newIcon) {
    _icon = newIcon;
    notifyListeners();
  }

  void setResource(String newType, IconData newIcon) {
    _type = newType;
    _icon = newIcon;
    notifyListeners();
  }
}
