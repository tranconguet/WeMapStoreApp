import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:store_app/components/default_button.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/screens/home/home_screen.dart';
import 'package:store_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenHeight * 0.2,
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.3,
            child: SvgPicture.asset(
              "assets/icons/order_success.svg",
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.08,
          ),
          Text(
            "Order Success !",
            style: headingStyle,
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.02,
          ),
          RichText(
            text: TextSpan(
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
              children: [
                TextSpan(
                  text: "Review your order at ",
                ),
                TextSpan(
                    text: "ORDER HISTORY",
                    style: TextStyle(
                      color: Colors.lightGreen[600],
                      decoration: TextDecoration.underline,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.08,
          ),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: DefaultButton(
              text: "back to home",
              press: () {
                Get.to(() => HomeScreen());
              },
            ),
          )
        ],
      ),
    );
  }
}
