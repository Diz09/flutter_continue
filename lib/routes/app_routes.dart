// ignore_for_file: duplicate_ignore, unused_import

import 'dart:js';


import 'package:flutter/material.dart';
import '../core/app_export.dart';

// import '../presentation/app_navigation_screen/app_navigation_screen.dart';
// import '../presentation/change_password_screen/change_password_screen.dart';
// import '../presentation/forgot_password_screen/forgot_password_screen.dart';
// import '../presentation/sign_in_one_screen/sign_in_one_screen.dart';
// import '../presentation/sign_in_screen/sign_in_screen.dart';
// import '../presentation/sign_up_screen/sign_up_screen.dart';
// import '../presentation/splash_screen/splash_screen.dart'; // ignore_for_file: must_be_immutable

import '../pages/welcome_pages.dart';
import '../pages/changepass_page.dart';
import '../pages/register_page.dart';
import '../pages/login_page.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String initialRoute = '/initialRoute';
  static const String splashScreen = '/splash_screen';
  static const String signInScreen = '/sign_in_screen';
  static const String signInOneScreen = '/sign_in_one_screen';
  static const String signUpScreen = '/sign_up_screen';
  static const String forgotPasswordScreen = '/forgot_password_screen';
  static const String changePasswordScreen = '/change_password_screen';
  static const String appNavigationScreen = '/app_navigation_screen';

  static const String daftarTransaksiScreen = '/daftar_transaksi';

  static Map<String, WidgetBuilder> routes = {
    // splashScreen: (context) => SplashScreen(),
    // signInScreen: (context) => SignInScreen(),
    // forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    // appNavigationScreen: (context) => AppNavigationScreen(),

    daftarTransaksiScreen: (context) => ,
    signInOneScreen: (context) => SignUpPage(),
    signUpScreen: (context) => LoginPage(),
    changePasswordScreen: (context) => ChangePasswordScreen(),
    initialRoute: (context) => WelcomePage()

  };
}
