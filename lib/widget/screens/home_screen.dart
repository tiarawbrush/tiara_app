import 'package:flutter/material.dart';

import '../../app/app_colors.dart';
import '../costum_button.dart';
import '../costum_text.dart';
import 'form_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required String text, required Null Function() onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Column(children: <Widget>[Icon(Icons.person, color: AppColors.red, size: 60)]),
          MyWidget(text: 'Home', onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const FormScreenWidget()));
          }),
          const SizedBox(height: 12),
          const CostumText(
            text: 'Home Screen',
            align: TextAlign.start,
            size: 15,
            weight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
