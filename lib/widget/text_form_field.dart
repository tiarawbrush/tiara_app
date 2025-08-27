import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget({
    super.key,
    required this.controller,
    required this.labelText,
    this.validator,
  });
  TextEditingController controller;
  String? labelText;
  String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(labelText: labelText, border: OutlineInputBorder()),
      validator: validator,
    );
  }
}
