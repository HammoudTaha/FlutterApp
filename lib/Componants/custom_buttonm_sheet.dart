import 'package:flutter/material.dart';
import 'package:hammoud/Componants/custom_button.dart';
import 'package:hammoud/Componants/custom_textfield.dart';

class CustomButtomSheet extends StatelessWidget {
  const CustomButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(hint: 'Title'),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              hint: 'Content',
              maxLines: 5,
            ),
            SizedBox(
              height: 80,
            ),
            CustomButton()
          ],
        ),
      ),
    );
  }
}
