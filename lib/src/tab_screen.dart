import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holy_bible/src/bookmark/bookmark_screen.dart';
import 'package:holy_bible/src/note/note_screen.dart';
import 'package:holy_bible/utils/constants.dart';

class TabScreen extends StatelessWidget {
  static const String routeName = '/tab';

  const TabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = const <Widget>[
      NoteScreen(),
      BookMarkScreen(),
      Center(child: Text('Copy')),
      Center(child: Text('Text')),
    ];

    return DefaultTabController(
      length: 4,
      child: GetBuilder<TabController>(
        init: TabController(),
        builder: (tabController) => Scaffold(
          body: _widgetOptions.elementAt(tabController.selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedFontSize: 12.0,
            unselectedFontSize: 10.0,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.note_add),
                label: 'Add Notes',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_add_rounded),
                label: 'Bookmark',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.copy),
                label: 'Copy',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.font_download),
                label: 'Text',
              ),
            ],
            currentIndex: tabController.selectedIndex,
            selectedItemColor: kPrimaryColor,
            onTap: tabController.onItemTapped,
          ),
        ),
      ),
    );
  }
}

class TabController extends GetxController {
  int selectedIndex = 0;

  onItemTapped(int index) {
    selectedIndex = index;
    update();
  }
}
