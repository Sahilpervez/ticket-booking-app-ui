import 'package:book_ticket/screens/home_screen.dart';
import 'package:book_ticket/screens/profile_screen.dart';
import 'package:book_ticket/screens/search_screen.dart';
import 'package:book_ticket/screens/setting_screen.dart';
import 'package:book_ticket/screens/ticket_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../utils/app_styles.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  static final List<Widget> _widgetsOptions = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
    const SettingScreen(),
  ];
  int _screenIdx = 0;
  void _onItemSelect(int index) {
    setState(() {
      _screenIdx = index;
    });
    print(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetsOptions[_screenIdx],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemSelect,
        currentIndex: _screenIdx,
        type: BottomNavigationBarType.fixed,
        elevation: 15,
        backgroundColor: Color(0xffeeedf2),
        // fixedColor: Color.fromARGB(255, 126, 81, 39),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.blueGrey,
        selectedItemColor: Styles.primaryColor,
        // selectedItemColor: Color.fromARGB(255, 109, 70, 33),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: "search",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
            label: "Tickets",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_settings_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_settings_filled),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
