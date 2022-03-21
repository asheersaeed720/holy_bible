import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holy_bible/src/account/account_screen.dart';
import 'package:holy_bible/src/auth/views/login_screen.dart';
import 'package:holy_bible/src/search/search_screen.dart';

customAppBar(String titleTxt, {isSearchIcon = false, isAtAccountScreen = false}) {
  return AppBar(
    title: Text(titleTxt),
    iconTheme: const IconThemeData(color: Colors.black),
    actions: [
      if (isSearchIcon)
        IconButton(
          onPressed: () => Get.toNamed(SearchScreen.routeName),
          icon: const Icon(Icons.search),
        ),
      PopupMenuButton(
        onSelected: (value) {
          log('$value');
          if (value == 1) {
            Get.toNamed(AccountScreen.routeName);
          } else {
            Get.toNamed(LogInScreen.routeName);
          }
        },
        itemBuilder: (context) => [
          if (!isAtAccountScreen)
            const PopupMenuItem(
              child: Text("Account"),
              value: 1,
            ),
          const PopupMenuItem(
            child: Text("Logout"),
            value: 2,
          ),
        ],
      ),
    ],
  );
}
