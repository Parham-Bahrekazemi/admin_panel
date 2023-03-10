import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SlideMenu extends StatelessWidget {
  const SlideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            DrawerHeader(
              child: Image.asset('assets/images/logo.png'),
            ),
            DrawerListTile(
              title: 'Dashboard',
              svgSrc: 'assets/icons/menu_dashbord.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Transaction',
              svgSrc: 'assets/icons/menu_tran.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Task',
              svgSrc: 'assets/icons/menu_task.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Documents',
              svgSrc: 'assets/icons/menu_doc.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Store',
              svgSrc: 'assets/icons/menu_store.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Notifications',
              svgSrc: 'assets/icons/menu_notification.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Profile',
              svgSrc: 'assets/icons/menu_profile.svg',
              press: () {},
            ),
            DrawerListTile(
              title: 'Setting',
              svgSrc: 'assets/icons/menu_setting.svg',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white54),
      ),
    );
  }
}
