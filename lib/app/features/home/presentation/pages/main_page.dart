import 'package:flutter/material.dart';
import 'package:test_flutter/app/config/extensions/icons_extensions.dart';
import 'package:test_flutter/app/features/home/presentation/pages/home_page.dart';

class MainPage extends StatelessWidget {
  static const String route = '/';
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomePage(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: "home".icon(), label: "Home"),
          BottomNavigationBarItem(icon: "search".icon(), label: "Search"),
          BottomNavigationBarItem(icon: "receipt".icon(), label: "Orders"),
          BottomNavigationBarItem(icon: "user".icon(), label: "Account"),
        ],
      ),
    );
  }
}
