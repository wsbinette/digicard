import 'package:flutter/material.dart';

class Destination {
  const Destination(this.index, this.route, this.info);
  final int index;
  final String route;
  final DestinationInfo info;
}

class DestinationInfo {
  const DestinationInfo(this.title, this.icon,
      [this.activeColor = Colors.white]);
  final String title;
  final IconData icon;
  final Color? activeColor;
}