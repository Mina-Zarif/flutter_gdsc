import 'package:flutter/material.dart';
import 'package:flutter_gdsc/features/home/view/home_view.dart';
import 'package:flutter_gdsc/features/search/view/search_view.dart';

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  int currentIndex = 0;
  List<Widget> screens = const [
    HomeView(),
    SearchView(),
  ];

  void onToggle(int value) {
    setState(() {
      currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => onToggle(value),
        currentIndex: currentIndex,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.amber,
        backgroundColor: const Color(0xff1a1a1a),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
        ],
      ),
    );
  }
}
