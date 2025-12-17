import 'package:flutter/material.dart';
import 'package:instagram/screens/home_page.dart';
import 'package:instagram/screens/messages.dart';
import 'package:instagram/screens/profile.dart';
import 'package:instagram/screens/reels_feed.dart';
import 'package:instagram/screens/reels_screen.dart';
// import 'package:instagram/screens/under_process.dart';
// import 'package:instagram/screens/main_interferance.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs = <PersistentTabConfig>[
      ////////////////////
      //// Home Screen////
      ////////////////////
      PersistentTabConfig(
        screen: const HomePage(),
        item: ItemConfig(
          icon: const Icon(Icons.home),
          activeForegroundColor: Colors.white.withValues(alpha: 0.7),
          inactiveBackgroundColor: const Color.fromARGB(0, 0, 0, 0),
        ),
      ),

      //////////////////////
      //// Reels Screen ////
      //////////////////////
      PersistentTabConfig(
        screen: const ReelsScreen(),
        item: ItemConfig(
          icon: const Icon(Icons.video_collection_outlined),
          activeForegroundColor: Colors.white.withValues(alpha: 0.7),
          inactiveBackgroundColor: const Color.fromARGB(0, 0, 0, 0),
        ),
      ),

      /////////////////////////
      //// Messages Screen ////
      /////////////////////////
      PersistentTabConfig(
        screen: const MessagesScreen(),
        item: ItemConfig(
          icon: const Icon(Icons.share),
          activeForegroundColor: Colors.white.withValues(alpha: 0.7),
          inactiveBackgroundColor: const Color.fromARGB(0, 0, 0, 0),
        ),
      ),

      ///////////////////////////
      //// Reels Feed Screen ////
      ///////////////////////////
      PersistentTabConfig(
        screen: const ReelsFeedScreen(),
        item: ItemConfig(
          icon: const Icon(Icons.search),
          activeForegroundColor: Colors.white.withValues(alpha: 0.7),
          inactiveBackgroundColor: const Color.fromARGB(0, 0, 0, 0),
        ),
      ),

      /////////////////////////
      ///// Profile Screen ////
      /////////////////////////
      PersistentTabConfig(
        screen: const ProfileScreen(),
        item: ItemConfig(
          icon: const Icon(Icons.person),
          activeForegroundColor: Colors.white.withValues(alpha: 0.7),
          inactiveBackgroundColor: const Color.fromARGB(0, 0, 0, 0),
        ),
      ),
    ];
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: PersistentTabView(
        tabs: tabs,
        navBarBuilder: (navBarConfig) => Style12BottomNavBar(
          navBarConfig: navBarConfig,
          navBarDecoration: NavBarDecoration(color: Colors.black),
        ),
      ),
    );
  }
}
