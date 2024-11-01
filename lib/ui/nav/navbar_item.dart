import 'package:flutter/material.dart';

enum NavBar {
  search,
  chats,
  home,
  favorite,
  profile,
}

class NavBarItem {
  final NavBar navBar;
  final IconData icon;
  NavBarItem(this.navBar, this.icon);
}
