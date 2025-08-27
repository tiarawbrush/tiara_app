import 'package:flutter/material.dart';

import '../costum_button.dart';
import '../costum_text.dart';
import '../text_form_field.dart';

class FormScreenWidget extends StatefulWidget {
  const FormScreenWidget({super.key});

  @override
  State<FormScreenWidget> createState() => _FormScreenWidgetState();
}

class _FormScreenWidgetState extends State<FormScreenWidget> {
  final Key _formKey = GlobalKey<FormState>();
  final TextEditingController namaController = TextEditingController();
  final TextEditingController kelasController = TextEditingController();
  final TextEditingController alasanController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CostumText(
          text: 'Tiara App',
          size: 18,
          weight: FontWeight.bold,
          align: TextAlign.left,
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.10),
          child: Column(
            children: [
              const CostumText(
                text: 'Form Absen',
                size: 16,
                weight: FontWeight.bold,
                align: TextAlign.left,
              ),
              SizedBox(height: 20,),
              TextFormFieldWidget(
                controller: namaController,
                labelText: 'Nama',
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Nama tidak boleh kosong';
                  } else if (value.length > 5) {
                    return 'Nama tidak boleh kurang dari 5';
                  }
                },
              ),

              SizedBox(height: 20,),
              TextFormFieldWidget(
                controller: kelasController,
                labelText: 'kelas',
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Kelas tidak boleh kosong';
                  } else if (value.length > 10) {
                    return 'Kelas tidak boleh kurang dari 10';
                  }
                },
              ),
              TextFormFieldWidget(controller: alasanController, labelText: 'Alasan'),
              MyWidget(text: 'Submit', onPressed: () {}),
              SizedBox(height: 10,),
              MyWidget(text: 'Reset', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
