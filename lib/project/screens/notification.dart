import 'package:flutter/material.dart';
import 'package:social_media/project/widgets/app_bar.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: "Notifications",
        ellipsisMenu: false,
      ),
    );
  }
}
