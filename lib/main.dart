import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:holy_bible/src/main_binding.dart';
import 'package:holy_bible/src/tab_screen.dart';
import 'package:holy_bible/utils/app_theme.dart';
import 'package:holy_bible/utils/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

//TODO: Search how can I implement add image in this.

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        title: 'Holy Bible',
        debugShowCheckedModeBanner: false,
        theme: lightThemeData,
        // darkTheme: darkThemeData,
        initialBinding: MainBinding(),
        initialRoute: TabScreen.routeName,
        getPages: routes,
      );
}
