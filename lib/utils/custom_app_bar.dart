import 'package:flutter/material.dart';

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
          const PopupMenuItem(
            child: Text("Logout"),
            value: 2,
          )
        ],
      ),
    ],
  );
}
