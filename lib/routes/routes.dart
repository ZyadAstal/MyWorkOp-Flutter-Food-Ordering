import 'package:flutter/material.dart';
import 'package:myworkop/core/resources/manager_strings.dart';
import 'package:myworkop/features/auth/presentation/view/login.dart';
import 'package:myworkop/features/auth/presentation/view/register.dart';
import 'package:myworkop/features/home/presentation/view/home_screen.dart';
import 'package:myworkop/features/splash/presentation/view/splash_screen.dart';

import '../features/auth/presentation/view/forget_password.dart';
import '../features/auth/presentation/view/login.dart';

class Routes {
  static const String splashScreen = '/splash_screen';
  static const String loginScreen = '/login_screen';
  static const String registerScreen = '/register_screen';
  static const String forgetPasswordScreen = '/forgetPassword_screen';
  static const String homeScreen = '/home_screen';



}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
  switch (settings.name) {
    case Routes.splashScreen:
      return MaterialPageRoute(builder: (_) => const SplashScreen());
    case Routes.loginScreen:
      return MaterialPageRoute(builder: (_) => const LoginScreen());
    case Routes.registerScreen:
      return MaterialPageRoute(builder: (_) => const RegisterScreen());
    case Routes.forgetPasswordScreen:
      return MaterialPageRoute(builder: (_) => const ForgetPasswordScreen());
    case Routes.homeScreen:
      return MaterialPageRoute(builder: (_) => const HomeScreen());
    default:
    return unDefineRoute();
  }
}

static Route<dynamic> unDefineRoute() {
  return MaterialPageRoute(
    builder: (_) => Scaffold(
      appBar: AppBar(),
      body: Center(
      child: Text(ManagerStrings.notFoundRoute),
      ),
    ),
  );
  }
}
