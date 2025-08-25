import 'package:flutter/material.dart';

import '../app/app_colors.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed,
     style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(AppColors.colorScheme.error), 
     foregroundColor: WidgetStatePropertyAll(AppColors.white)),
     child: Text(text), 
    );
     
  }
}