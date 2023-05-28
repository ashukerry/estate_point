import 'package:estate_point/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomEstateButton extends StatelessWidget {
  CustomEstateButton({Key? key, this.text}) : super(key: key);
  String? text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: AppColors.appGreen, // Background Color
        ),
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Center(child: Text(text!)),
          ),
        ));
  }
}
