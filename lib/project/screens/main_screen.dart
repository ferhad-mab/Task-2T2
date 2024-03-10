import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:social_media/project/screens/explore.dart';
import 'package:social_media/project/screens/home.dart';
import 'package:social_media/project/screens/notification.dart';
import 'package:social_media/project/screens/profile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    // Add all of the pages that we want to navigate to
    HomePage(),
    ExplorePage(),
    const NotificationPage(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          backgroundColor: const Color.fromRGBO(185, 219, 222, 1),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Iconsax.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.search_normal), label: 'Explore'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.notification_bing), label: 'Notification'),
            BottomNavigationBarItem(icon: Icon(Iconsax.user), label: 'Profile')
          ],
          onTap: (Index) {
            setState(() {
              _currentIndex = Index;
            });
          },
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(color: Colors.black)),
    );
  }
}
