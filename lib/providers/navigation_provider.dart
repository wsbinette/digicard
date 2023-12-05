import "package:flutter/material.dart";

class NavigationProvider with ChangeNotifier{
  final PageController _pageController = PageController(initialPage: 1);

  PageController get pageController => _pageController;

  void navigateToPage(int index, {Duration? duration, Curve? curve}){
    _pageController.animateToPage(
      index,
      duration: duration ?? const Duration(milliseconds: 300),
      curve: curve ?? Curves.easeInOut,
    );
    notifyListeners();
  }

  @override
  void dispose(){
    _pageController.dispose();
    super.dispose();
  }
}