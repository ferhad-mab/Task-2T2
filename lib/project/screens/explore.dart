import 'package:flutter/material.dart';
import 'package:social_media/project/widgets/app_bar.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: MyAppBar(title: "Explore"));
  }
}
