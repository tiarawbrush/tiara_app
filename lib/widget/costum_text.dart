import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app/app_colors.dart';

class CostumText extends StatelessWidget {
  const CostumText({super.key, required this.text, required this.size, required this.weight, required this.align});
  final String text;
  final double size;
  final FontWeight weight;
  final TextAlign align;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: GoogleFonts.urbanist(
        fontSize: size,
        fontWeight: weight,
        color: AppColors.red, 
      )
    );
  }
}
