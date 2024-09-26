import 'package:flutter/material.dart';
import 'package:hammoud/Componants/custom_appbar.dart';
import 'package:hammoud/Componants/custom_textfield.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 40,
          left: 25,
          right: 30,
          bottom: 15,
        ),
        child: Column(
          children: [
            CustomAppBar(
              title: 'Edit Note',
              icon: Icons.check,
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextField(hint: 'Title'),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              hint: 'Content',
              maxLines: 4,
            ),
          ],
        ),
      ),
    );
  }
}
