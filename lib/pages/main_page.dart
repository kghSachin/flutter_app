import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:frontend_flutter/pages/home/home_page.dart';
import 'package:frontend_flutter/pages/home/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          HomePage(),
          ProfilePage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedIconTheme: const IconThemeData(color: Colors.deepPurple),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
                child: SvgPicture.asset(
                  "assets/icons/home/home.svg",
                  colorFilter: ColorFilter.mode(
                      _selectedIndex == 0 ? Colors.deepPurple : Colors.grey,
                      BlendMode.srcIn),
                ),
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  _selectedIndex = 1;
                  setState(() {});
                },
                child: SvgPicture.asset(
                  "assets/icons/home/bookmark.svg",
                  colorFilter: ColorFilter.mode(
                      _selectedIndex == 1 ? Colors.deepPurple : Colors.grey,
                      BlendMode.srcIn),
                ),
              ),
              label: "Bookmark"),
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                },
                child: CircleAvatar(
                  radius: 14,
                  backgroundColor: _selectedIndex == 2
                      ? Colors.purple
                      : Colors.grey.withOpacity(0.3),
                  child: Icon(
                    Icons.person,
                    color: _selectedIndex == 2 ? Colors.white : Colors.grey,
                  ),
                ),
              ),
              label: "Bookmark"),
        ],
      ),
    );
  }
}
