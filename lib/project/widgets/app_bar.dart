import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool ellipsisMenu;
  final bool settingIcon;
  final Color backgroundColor;

  const MyAppBar({
    Key? key,
    this.title,
    this.ellipsisMenu = true,
    this.settingIcon = true,
    this.backgroundColor = const Color.fromRGBO(185, 219, 222, 1),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(title ?? ''),
      backgroundColor: backgroundColor,
      leading: ellipsisMenu
          ? IconButton(icon: Icon(Iconsax.more), onPressed: () {})
          : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        appBar: MyAppBar(title: 'Your Title'),
        body: Center(child: Text('Your Content')),
      ),
    ),
  );
}
