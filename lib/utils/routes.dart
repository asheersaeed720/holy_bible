import 'package:get/get.dart';
import 'package:holy_bible/src/account/account_screen.dart';
import 'package:holy_bible/src/auth/views/forgot_password_screen.dart';
import 'package:holy_bible/src/auth/views/login_screen.dart';
import 'package:holy_bible/src/auth/views/sign_up_screen.dart';
import 'package:holy_bible/src/bookmark/bookmark_detail_screen.dart';
import 'package:holy_bible/src/search/search_screen.dart';
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
  GetPage(
    name: SearchScreen.routeName,
    page: () => const SearchScreen(),
  ),
  GetPage(
    name: AccountScreen.routeName,
    page: () => const AccountScreen(),
  ),
  GetPage(
    name: BookMarkDetailScreen.routeName,
    page: () => const BookMarkDetailScreen(),
  ),
];
