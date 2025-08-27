import 'package:flutter/material.dart';

import 'app/app_colors.dart';
import 'widget/buttom_Navigation.dart';
import 'widget/costum_button.dart';
import 'widget/costum_text.dart';
import 'widget/screens/home_screen.dart';
import 'widget/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomeScreen(text: 'Absen', onPressed: () {}),
    ProfileScreen(text: 'Absen'),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent)),
      home: Scaffold(
        appBar: AppBar(
          title: const CostumText(
            text: 'Tiara App',
            size: 18,
            weight: FontWeight.bold,
            align: TextAlign.left,
          ),
        ),
        body: _pages[_selectedIndex],

        bottomNavigationBar: ButtomNavigationWidget(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        ),
      ),
    );
  }
}
