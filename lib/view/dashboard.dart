import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hotel_book/view/dashboard_pages/home.dart';
import 'package:hotel_book/view/dashboard_pages/user_profile.dart';
import 'package:hotel_book/view/search.dart';

import '../const.dart';
import 'activities.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool isSwitched = true;
  var textValue = 'Switch is OFF';
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    UserProfile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        iconTheme: IconThemeData(color: black),
        elevation: 1,
        centerTitle: true,
        leading: Transform.scale(
            scale: 0.6,
            child: Switch(
              onChanged: toggleSwitch,
              value: isSwitched,
              activeColor: Colors.green,
              activeTrackColor: Colors.grey,
              inactiveThumbColor: red,
              inactiveTrackColor: Colors.grey,
            )),
        title: Image.network(
          logo,
          height: 40,
          width: 150,
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.zero,
            iconSize: 17,
            splashRadius: 20.r,
            onPressed: () {
              Get.to(() => const Search());
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            splashRadius: 20.r,
            iconSize: 17,
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            splashRadius: 20.r,
            iconSize: 17,
            onPressed: () {
              Get.to(() => const Activities());
            },
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }
}
