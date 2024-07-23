import 'package:flutter/material.dart';
import 'package:recipe_app/screens/home/home_screen.dart';
import 'package:recipe_app/screens/profile/profile_screen.dart'; // Corrected the import path

class NavigationItem {
  final int id;
  final String iconPath;
  final Widget? destination;

  NavigationItem({
    required this.id,
    required this.iconPath,
    this.destination,
  });

  // Checks if the navigation item has a destination
  bool hasDestination() {
    return destination != null;
  }
}

class NavigationItems extends ChangeNotifier {
  // Index of the currently selected navigation item
  int _currentIndex = 0;

  // Getter for the selected index
  int get selectedIndex => _currentIndex;

  // Updates the selected index and notifies listeners
  void updateSelectedIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  // List of navigation items
  final List<NavigationItem> items = [
    NavigationItem(
      id: 1,
      iconPath: "assets/icons/home.svg",
      destination: HomeScreen(),
    ),
    NavigationItem(
      id: 2,
      iconPath: "assets/icons/list.svg",
    ),
    NavigationItem(
      id: 3,
      iconPath: "assets/icons/camera.svg",
    ),
    NavigationItem(
      id: 4,
      iconPath: "assets/icons/chef_nav.svg",
    ),
    NavigationItem(
      id: 5,
      iconPath: "assets/icons/user.svg",
      destination: ProfileScreen(),
    ),
  ];
}
