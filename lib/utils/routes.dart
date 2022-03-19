import 'package:get/get.dart';
import 'package:holy_bible/src/auth/views/forgot_password_screen.dart';
import 'package:holy_bible/src/auth/views/login_screen.dart';
import 'package:holy_bible/src/auth/views/sign_up_screen.dart';
import 'package:holy_bible/src/tab_screen.dart';

final List<GetPage<dynamic>> routes = [
  GetPage(
    name: LogInScreen.routeName,
    page: () => LogInScreen(),
  ),
  GetPage(
    name: SignUpScreen.routeName,
    page: () => SignUpScreen(),
  ),
  GetPage(
    name: ForgotPasswordScreen.routeName,
    page: () => ForgotPasswordScreen(),
  ),
  GetPage(
    name: TabScreen.routeName,
    page: () => const TabScreen(),
  ),
];
