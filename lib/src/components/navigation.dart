import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class Navigation extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;

  const Navigation({
    super.key,
    required this.appBar,
  });

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: SizedBox(
        width: 35,
        child: Image.asset('assets/images/logo/logo-single.png'),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {},
          child: const Icon(
            Remix.notification_4_line,
            color: Colors.blueAccent,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Icon(
            Remix.settings_line,
            color: Colors.blueAccent,
          ),
        )
      ],
    );
  }
}
