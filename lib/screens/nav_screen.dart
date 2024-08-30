import 'package:besocial/data/data.dart';
import 'package:besocial/screens/screens.dart';
import 'package:besocial/widgest/widgets.dart';
import 'package:flutter/material.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    const HomeScreen(),
    const Scaffold(),
    const Scaffold(),
    ProfileScreen(
      currentUser: currentUser,
    ),
  ];

  final List<IconData> _icons = [
    Icons.home,
    Icons.search,
    Icons.add,
    Icons.person_outline,
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _icons.length,
        child: Scaffold(
          body: IndexedStack(
            index: _selectedIndex,
            children: _screens,
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: CustomTabbar(
              isBottomIndicator: false,
              icons: _icons,
              selectedIdex: _selectedIndex,
              onTap: (index) => setState(() => _selectedIndex = index),
            ),
          ),
        ));
  }
}
