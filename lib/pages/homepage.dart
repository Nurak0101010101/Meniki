import 'package:app1/pages/carscatalogpage.dart';
import 'package:app1/pages/layoutandpositioning.dart';
import 'package:app1/pages/newspage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class HomePage extends StatefulWidget {
  final Widget child;
  const HomePage({super.key, required this.child});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  void changeTab(int index) {
    switch (index) {
      case 0:
        context.go(Newspage.route);
        break;
      case 2:
        context.go(CarsCatalogPage.route);
        break;
      case 1:
        context.go(LayoutAndPositioning.route);
        break;
    }
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: widget.child,
      bottomNavigationBar: NavigationBar(
          selectedIndex: currentIndex,
          onDestinationSelected: changeTab,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.newspaper), label: 'News'),
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.car_crash_sharp), label: 'Cars'),
          ]),
    );
  }
}