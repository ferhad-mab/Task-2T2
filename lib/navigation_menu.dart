import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            backgroundColor: Color.fromRGBO(185, 219, 222, 1),
            selectedIndex: controller.selectedIndex.value,
            selectedItemColor: Colors.blue,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
              NavigationDestination(
                  icon: Icon(Iconsax.search_normal), label: "Explore"),
              NavigationDestination(
                  icon: Icon(Iconsax.notification_bing),
                  label: "Notifications"),
              NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
            ]),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    Container(color: Colors.amber),
    Container(color: const Color.fromARGB(185, 219, 222, 1)),
    Container(color: const Color.fromARGB(255, 160, 139, 76)),
    Container(color: const Color.fromARGB(255, 119, 106, 69))
  ];
}
// replace screen later
//  HomeScreen(),ExploreScreen(),ex