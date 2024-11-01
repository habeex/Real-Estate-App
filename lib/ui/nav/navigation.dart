import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:realestateapp/ui/home/home_screen.dart';
import 'package:realestateapp/ui/nav/navbar_item.dart';
import 'package:realestateapp/ui/search/search_screen.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  final List<NavBarItem> _navigation = [
    NavBarItem(NavBar.search, Iconsax.search_normal_1),
    NavBarItem(NavBar.chats, Iconsax.message),
    NavBarItem(NavBar.home, Iconsax.home_1),
    NavBarItem(NavBar.favorite, Iconsax.heart),
    NavBarItem(NavBar.profile, Iconsax.user)
  ];
  var _selectedNavBar = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          IndexedStack(
            index: _selectedNavBar,
            sizing: StackFit.expand,
            children: [
              SearchScreen(
                key: GlobalKey(),
              ),
              const Center(child: Text("chats")),
              HomeScreen(
                key: GlobalKey(),
              ),
              const Center(child: Text("favorite")),
              const Center(child: Text("profile")),
            ],
          ),
          Positioned(
            bottom: 24,
            left: 0,
            right: 0,
            child: _bottomNavigationBar(),
          )
        ],
      ),
    );
  }

  _bottomNavigationBar() => Container(
        margin: const EdgeInsets.only(
          left: 40,
          right: 40,
        ),
        padding: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          color: const Color(0xFF393A3A),
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: _buildBottomNavIcons(),
        ),
      )
          .animate()
          .fadeIn(delay: 2.seconds, duration: 600.ms)
          .scale()
          .move(delay: 300.ms, duration: 600.ms)
          .slide(
            curve: Curves.easeIn,
            begin: const Offset(0, 1),
            end: const Offset(0, 0),
          );

  List<Widget> _buildBottomNavIcons() =>
      List.generate(_navigation.length, (index) {
        final navBar = _navigation[index].navBar;
        final icon = _navigation[index].icon;
        return CircleAvatar(
          radius: _selectedNavBar == index ? 28 : 20,
          backgroundColor:
              _selectedNavBar == index ? Colors.orange : Colors.black,
          child: InkWell(
            key: Key('key_${navBar.name}'),
            child: AnimatedSwitcher(
              duration: const Duration(microseconds: 300),
              transitionBuilder: (child, animation) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              child: Icon(
                icon,
                size: 20,
                color: Colors.white,
              ),
            ),
            onTap: () => onTap(index),
          ),
        );
      });

  void onTap(int item) {
    setState(() {
      _selectedNavBar = item;
    });
  }
}
