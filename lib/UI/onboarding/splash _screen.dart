import 'package:estate_point/utils/colors.dart';
import 'package:estate_point/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              PngImages.estatePointBackgroundImage,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  SvgImages.estatePointLogo,
                  height: 50,
                  width: 50,
                ),
                const SizedBox(
                  width: 20,
                ),
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                    text: "ESTATE",
                    style: TextStyle(
                      color: AppColors.appGreen,
                      fontSize: 32,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: " POINT\n",
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 32,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: "REAL ESTATE SOLUTIONS",
                    style: TextStyle(
                      color: AppColors.descriptionColor,
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ]))
              ],
            ),
          )
        ],
      ),
    );
  }
}
