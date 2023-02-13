import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/menu_controller.dart';
import 'package:flutter_application_1/screens/dashboard/dashboard_screen.dart';
import 'package:flutter_application_1/screens/responsive.dart';
import 'package:provider/provider.dart';
import './components/slide_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: const SlideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (ResPonsive.isDesktop(context))
              const Expanded(
                child: SlideMenu(),
              ),
            const Expanded(
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
