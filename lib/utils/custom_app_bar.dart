import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holy_bible/src/auth/views/login_screen.dart';

customAppBar(String titleTxt, {isSearchIcon = false}) {
  return AppBar(
    title: Text(titleTxt),
    iconTheme: const IconThemeData(color: Colors.black),
    actions: [
      if (isSearchIcon) IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
      PopupMenuButton(
        itemBuilder: (context) => [
          const PopupMenuItem(
            child: Text("Setting"),
            value: 1,
          ),
          PopupMenuItem(
            onTap: () => Get.toNamed(LogInScreen.routeName),
            child: const Text("Logout"),
            value: 2,
          )
        ],
      ),
    ],
  );
}
