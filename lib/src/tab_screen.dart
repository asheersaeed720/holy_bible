import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holy_bible/src/bookmark/bookmark_screen.dart';
import 'package:holy_bible/src/note/note_screen.dart';
import 'package:holy_bible/src/read/read_screen.dart';
import 'package:holy_bible/utils/constants.dart';

class TabScreen extends StatelessWidget {
  static const String routeName = '/tab';

  const TabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = const <Widget>[
      NoteScreen(),
      ReadScreen(),
      BookMarkScreen(),
    ];

    return DefaultTabController(
      length: 3,
      child: GetBuilder<TabController>(
        init: TabController(),
        builder: (tabController) => Scaffold(
          body: _widgetOptions.elementAt(tabController.selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.note_add),
                label: 'Add Notes',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(height: 24.0),
                label: 'Read',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_add_rounded),
                label: 'Bookmark',
              ),
            ],
            currentIndex: tabController.selectedIndex,
            selectedItemColor: kPrimaryColor,
            onTap: tabController.onItemTapped,
          ),
          floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            elevation: 4.0,
            disabledElevation: 0,
            backgroundColor: kPrimaryColor,
            child: const Icon(
              Icons.book_online_outlined,
              size: 28.0,
            ),
            onPressed: () {
              tabController.onItemTapped(1);
            },
          ),
        ),
      ),
    );
  }
}

class TabController extends GetxController {
  int selectedIndex = 1;

  onItemTapped(int index) {
    selectedIndex = index;
    update();
  }
}
