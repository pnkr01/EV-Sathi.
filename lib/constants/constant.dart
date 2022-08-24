import 'package:ev_station/constants/size_config.dart';
import 'package:flutter/material.dart';

const primaryColor = Color.fromARGB(15, 75, 21, 161);
const primaryLightColor = Color(0xFFFECDEF);
const primaryGradientColor = LinearGradient(
  begin: Alignment.topRight,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFFFFA53E),
    Color(0xFFFF7643),
  ],
);
const secondaryColor = Color(0xFF979797);
const textColor = Color(0xFF757575);
const animationDuration = Duration(milliseconds: 200);
final headingStyle = TextStyle(
  fontSize: getPropotionateScreenHeight(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);
const double defpaultPadding = 16.0;
const defaultDuration = Duration(milliseconds: 250);

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String emailNullError = "Please Enter your email";
const String invalidEmailError = "Please Enter Valid Email";
const String passNullError = "Please Enter your password";
const String shortPassError = "Password is too short";
const String matchPassError = "Passwords don't match";
const String namelNullError = "Please Enter your name";
const String phoneNumberNullError = "Please Enter your phone number";
const String addressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getPropotionateScreenWidth(15.0)),
  border: const OutlineInputBorder(),
  focusedBorder: customInputBorder(),
  enabledBorder: customInputBorder(),
);

OutlineInputBorder customInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getPropotionateScreenWidth(15.0)),
    borderSide: const BorderSide(
      color: textColor,
    ),
  );
}

//Splash Screen
const String backtText = "Back";

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

double getRelativeHeight(double percentage) {
  return percentage * SizeConfig.screenHeight;
}

double getRelativeWidth(double percentage) {
  return percentage * SizeConfig.screenWidth;
}
