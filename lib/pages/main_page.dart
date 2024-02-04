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
          HomePage(),
          ProfilePage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedIconTheme: const IconThemeData(color: Colors.deepPurple),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/home/home.svg",
                colorFilter: ColorFilter.mode(
                    _selectedIndex == 0 ? Colors.deepPurple : Colors.grey,
                    BlendMode.srcIn),
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SvgPicture.asset(
                  "assets/icons/home/bookmark.svg",
                  colorFilter: ColorFilter.mode(
                      _selectedIndex == 1 ? Colors.deepPurple : Colors.grey,
                      BlendMode.srcIn),
                ),
              ),
              label: "Bookmark"),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/home/chat.svg",
              height: 28,
              colorFilter: ColorFilter.mode(
                  _selectedIndex == 2 ? Colors.deepPurple : Colors.grey,
                  BlendMode.srcIn),
            ),
            label: "chat",
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 14,
              backgroundColor: _selectedIndex == 3
                  ? Colors.purple
                  : Colors.grey.withOpacity(0.3),
              child: Icon(
                Icons.person,
                color: _selectedIndex == 3 ? Colors.white : Colors.grey,
              ),
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
