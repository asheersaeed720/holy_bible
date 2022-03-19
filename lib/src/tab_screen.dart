import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:holy_bible/utils/constants.dart';

class TabScreen extends StatelessWidget {
  static const String routeName = '/tab';

  const TabScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = <Widget>[
      Text('1'),
      Text('2'),
      Text('3'),
      Text('4'),
      Text('5'),
    ];

    return DefaultTabController(
      length: 5,
      child: GetBuilder<TabController>(
        init: TabController(),
        builder: (tabController) => Scaffold(
          body: _widgetOptions.elementAt(tabController.selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.track_changes),
                label: 'Your Rides',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: 'Publish',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chat),
                label: 'Inbox',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: 'Profile',
              ),
            ],
            currentIndex: tabController.selectedIndex,
            selectedItemColor: kPrimaryColor,
            onTap: tabController.onItemTapped,
          ),
          floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              border: Border.all(color: kPrimaryColor, width: 2.5),
              borderRadius: BorderRadius.circular(32.0),
            ),
            child: FloatingActionButton(
              elevation: 4.0,
              disabledElevation: 0,
              backgroundColor: Colors.white,
              child: const Icon(
                Icons.add,
                color: kPrimaryColor,
                size: 28.0,
              ),
              onPressed: () {
                tabController.onItemTapped(2);
              },
            ),
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
