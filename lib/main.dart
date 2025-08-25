import 'package:flutter/material.dart';

import 'app/app_colors.dart';
import 'widget/costum_button.dart';
import 'widget/costum_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: 
              [
                Column(children: [Icon(Icons.person, color: AppColors.red, size: 60,)],),
                MyWidget(text: 'Action', onPressed: (){}),
              const CostumText(text: 'Tiara', align: TextAlign.start, size: 30, weight: FontWeight.bold,)],
          ),
        ),
      ),
    );
  }
}
