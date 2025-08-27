import 'package:flutter/material.dart';

class ButtomNavigationWidget extends StatelessWidget {
  ButtomNavigationWidget({super.key, required this.selectedIndex, required this.onItemTapped});

  int selectedIndex;
  void Function(int)? onItemTapped;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onItemTapped,
      currentIndex: selectedIndex,
      items: const [
        BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
      ],
    );
  }
}
