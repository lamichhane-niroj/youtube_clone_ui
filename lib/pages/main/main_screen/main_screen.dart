import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:youtube_clone/constants/asset_const.dart';
import 'package:youtube_clone/constants/textstyle_const.dart';
import 'package:youtube_clone/pages/main/add_video_screen/add_video_screen.dart';
import 'package:youtube_clone/pages/main/home_screen/home_screen.dart';
import 'package:youtube_clone/pages/main/profile_screen/profile_screen.dart';
import 'package:youtube_clone/pages/main/shorts_screen/shorts_screen.dart';
import 'package:youtube_clone/pages/main/subscription_screen/subscription_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        backgroundColor: Colors.grey.shade900,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 15),
              child: Column(
                children: [
                   Row(
                children: [
                  Image.asset(AssetConst.youtubeLogo, height: 50),
                  const SizedBox(width: 5),
                  Text("YouTube", style: TextStyleConst.youtube),
                ],
              ),
              const SizedBox(height: 15),
              _customDrawerItem(
                const Icon(Icons.trending_up, size: 30), "Trending"),
                          _customDrawerItem(
                const Icon(Icons.music_note, size: 30), "Music"),
                          _customDrawerItem(
                const Icon(CupertinoIcons.game_controller, size: 30),
                "Gaming"),
                          _customDrawerItem(const Icon(Icons.sports, size: 30), "Sports"),
                          const Divider(),
                          const SizedBox(height: 15),
                          _customDrawerItem(Image.asset(AssetConst.youtubeLogo, height: 35),
                "YouTube Premium"),
                          _customDrawerItem(SvgPicture.asset(AssetConst.youtubeStudioIcon, height: 35),
                "YouTube Studio"),
                          _customDrawerItem(SvgPicture.asset(AssetConst.youtubeMusicIcon, height: 35),
                "YouTube Music"),
                          _customDrawerItem(SvgPicture.asset(AssetConst.youtubeKidsIcon, height: 35),
                "YouTube kids"),
                ],
              ),
            ),
            const Spacer(),
            const Text("Privary Policy . Terms of Service"),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedIconTheme: const IconThemeData(color: Colors.white),
        unselectedItemColor: Colors.white,
        unselectedLabelStyle:
            const TextStyle(color: Colors.white, fontSize: 12),
        selectedLabelStyle: const TextStyle(color: Colors.white, fontSize: 12),
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? const Icon(Icons.home, size: 28)
                : const Icon(Icons.home_outlined, size: 28),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? SvgPicture.asset(
                    AssetConst.youtubeShortsIcon,
                    width: 25,
                    height: 25,
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  )
                : SvgPicture.asset(
                    AssetConst.youtubeShortsIconOutline,
                    width: 25,
                    height: 25,
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
            label: "Shorts",
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  shape: BoxShape.circle),
              child: const Icon(
                Icons.add,
                size: 28,
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? const Icon(
                    Icons.subscriptions,
                    size: 28,
                  )
                : const Icon(
                    Icons.subscriptions_outlined,
                    size: 28,
                  ),
            label: "Subscriptions",
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
                border: _selectedIndex == 4
                    ? Border.all(color: Colors.white, width: 2)
                    : null,
              ),
              child: const Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            label: "You",
          ),
        ],
      ),
      body: _switchPages(_selectedIndex),
    );
  }

  _switchPages(int index) {
    switch (index) {
      case 0:
        return HomeScreen(
          onTap: () {
            _scaffoldKey.currentState!.openDrawer();
          },
        );
      case 1:
        return const ShortsScreen();
      case 2:
        return const AddVideoScreen();
      case 3:
        return SubscriptionScreen();
      case 4:
        return const ProfileScreen();
    }
  }

  Widget _customDrawerItem(Widget icon, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          icon,
          const SizedBox(
            width: 15,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}
