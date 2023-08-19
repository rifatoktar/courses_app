import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../tabs/home_tab.dart';
import '../tabs/courses_tab.dart';
import '../tabs/completed_courses_tab.dart';
import '../tabs/settings_tab.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeTab(),
    CoursesTab(),
    CompletedCoursesTab(),
    SettingsTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: Color(0xff5AE4A7),
              iconSize: 24,
              elevation: 0,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: _selectedIndex == 0 ? SvgPicture.asset(
                    "assets/icons/home-fill.svg",
                    colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ) : SvgPicture.asset(
                    "assets/icons/home.svg",
                    colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: _selectedIndex == 1 ? SvgPicture.asset(
                    "assets/icons/book-fill.svg",
                    colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ) : SvgPicture.asset(
                    "assets/icons/book.svg",
                    colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: _selectedIndex == 2 ? SvgPicture.asset(
                    "assets/icons/cap-fill.svg",
                    colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ) : SvgPicture.asset(
                    "assets/icons/cap.svg",
                    colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                  label: '',
                ),
                 BottomNavigationBarItem(
                  icon: _selectedIndex == 3 ? SvgPicture.asset(
                    "assets/icons/settings-fill.svg",
                    colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ) : SvgPicture.asset(
                    "assets/icons/settings.svg",
                    colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                  label: '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
