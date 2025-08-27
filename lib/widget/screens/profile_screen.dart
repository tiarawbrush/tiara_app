import 'package:flutter/material.dart';

import '../../app/app_colors.dart';
import '../costum_button.dart';
import '../costum_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, required String text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        height: 200,
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/Tiara.jpg', height: 100),
              const SizedBox(width: 20),
             const Column(
                children: [
              CostumText(
                text: 'Tiara Afriyanih',
                align: TextAlign.center, 
                size: 15,
                weight: FontWeight.bold,
              ),
              CostumText(
                text: 'XII RPL 2',
                align: TextAlign.center, 
                size: 15,
                weight: FontWeight.bold,
              ),
                ],
              )    
            ],
          ),
        ),
      ),
    );
  }
}
