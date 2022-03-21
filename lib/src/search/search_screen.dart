import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  static const String routeName = '/search';

  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, right: 14.0),
          child: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () => Get.back(),
                child: const Icon(Icons.arrow_back_ios_new_rounded, size: 22.0),
              ),
            ),
            titleSpacing: 0.0,
            iconTheme: const IconThemeData(color: Colors.black),
            // backgroundColor: Theme.of(context).backgroundColor,
            elevation: 0.0,
            title: _buildSearchBarTextField(),
          ),
        ),
      ),
      body: const Center(
        child: Text('Search Result'),
      ),
    );
  }

  Widget _buildSearchBarTextField() {
    return TextFormField(
      autofocus: true,
      keyboardType: TextInputType.text,
      onChanged: (value) {
        if (value.length >= 2 && value.length <= 11) {}
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 22),
        border: OutlineInputBorder(
          borderSide: const BorderSide(width: 1.0, color: Colors.grey),
          borderRadius: BorderRadius.circular(6.0),
        ),
        hintText: 'Search',
        isDense: true,
        prefixIconConstraints: const BoxConstraints(minWidth: 23.0, maxHeight: 20.0),
        suffixIconConstraints: const BoxConstraints(minWidth: 23.0, maxHeight: 20.0),
      ),
    );
  }
}
