import 'package:estate_point/utils/colors.dart';
import 'package:estate_point/utils/custom_button.dart';
import 'package:estate_point/utils/custom_form_field.dart';
import 'package:estate_point/utils/images.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              PngImages.estatePointBackgroundImage,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.black.withOpacity(0.5),
            height: double.infinity,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 20, right: 20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: AppColors.descriptionColor,
                          fontSize: 36,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "Email",
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  CustomTextFormField(
                    hintText: "Email Address",
                  ),
                  const Text(
                    "Password",
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  CustomTextFormField(
                    hintText: "Password",
                    icon: GestureDetector(
                      child: const Icon(Icons.visibility),
                    ),
                  ),
                  CustomEstateButton(
                    text: "Login",
                  ),
                  const Spacer(),
                ]),
          )
        ],
      ),
    );
  }
}
