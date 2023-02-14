import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/main/main_screen.dart';
import 'controllers/menu_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      theme: ThemeData.dark().copyWith(
        canvasColor: secondaryColor,
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme.apply(
                bodyColor: Colors.white,
              ),
        ),
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<MenuControllerProvider>(
            create: (BuildContext context) {
              return MenuControllerProvider();
            },
          ),
        ],
        child: const MainScreen(),
      ),
    );
  }
}
