import 'package:flutter/material.dart';
import 'package:holy_bible/utils/constants.dart';
import 'package:holy_bible/utils/custom_app_bar.dart';

class AccountScreen extends StatelessWidget {
  static const String routeName = '/account';

  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('My Account', isAtAccountScreen: true),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, bottom: 6.0),
            child: Text('Account Info', style: kBodyStyle.copyWith(color: kPrimaryColor)),
          ),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(32.0),
              ),
              padding: const EdgeInsets.all(8.0),
              child: const Icon(Icons.email),
            ),
            title: Text('Email', style: kBodyStyle),
            subtitle: const Text('test@test.com'),
          ),
          const Divider(indent: 8.0, endIndent: 8.0, thickness: 1.0),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(32.0),
              ),
              padding: const EdgeInsets.all(8.0),
              child: const Icon(Icons.dark_mode),
            ),
            title: Text('Night Mode', style: kBodyStyle),
            trailing: Switch(
              value: false,
              onChanged: (value) {},
              activeTrackColor: Colors.lightBlue,
              activeColor: Colors.blue,
            ),
          ),
          const Divider(indent: 8.0, endIndent: 8.0, thickness: 1.0),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(32.0),
              ),
              padding: const EdgeInsets.all(8.0),
              child: const Icon(Icons.notifications),
            ),
            title: Text('Notication', style: kBodyStyle),
            trailing: Switch(
              value: false,
              onChanged: (value) {},
              activeTrackColor: Colors.lightBlue,
              activeColor: Colors.blue,
            ),
          ),
          //? Support
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 12.0, bottom: 12.0),
            child: Text('Support', style: kBodyStyle.copyWith(color: kPrimaryColor)),
          ),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(32.0),
              ),
              padding: const EdgeInsets.all(8.0),
              child: const Icon(Icons.info),
            ),
            title: Text('About Us', style: kBodyStyle),
          ),
          const Divider(indent: 8.0, endIndent: 8.0, thickness: 1.0),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(32.0),
              ),
              padding: const EdgeInsets.all(8.0),
              child: const Icon(Icons.help),
            ),
            title: Text('Help', style: kBodyStyle),
          ),
          const Divider(indent: 8.0, endIndent: 8.0, thickness: 1.0),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(32.0),
              ),
              padding: const EdgeInsets.all(8.0),
              child: const Icon(Icons.help),
            ),
            title: Text('Feedback', style: kBodyStyle),
          ),
          const Divider(indent: 8.0, endIndent: 8.0, thickness: 1.0),
          ListTile(
            leading: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(32.0),
              ),
              padding: const EdgeInsets.all(8.0),
              child: const Icon(Icons.help),
            ),
            title: Text('Rate Us', style: kBodyStyle),
          ),
        ],
      ),
    );
  }
}
