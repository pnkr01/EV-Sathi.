import 'package:ev_station/src/screen/auth/sign_in/login_form.dart';
import 'package:flutter/material.dart';

import 'src/screen/Splash/splash.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  //SignInScreen.routeName :(context) =>  const SignInScreen(),
  // OTPScreen.routename : ((context) =>  OTPScreen()),
  LogInCumSignUpScreen.routename: ((context) => const LogInCumSignUpScreen()),
};
