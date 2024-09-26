import 'package:flutter/material.dart';
import 'package:hammoud/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: kPrimaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      minWidth: MediaQuery.of(context).size.width,
      height: 50,
      child: const Text(
        'Add',
        style: TextStyle(
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
