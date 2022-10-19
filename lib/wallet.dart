import 'package:leewsafe/dapp_page.dart';
import 'package:leewsafe/settings_page.dart';
import 'package:leewsafe/wallet_main_page.dart';
import 'package:leewsafe/widgets/buttom_navbar.dart';
import 'package:leewsafe/widgets/swap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  late final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PersistentTabView(
          context,
          controller: _controller,
          screens: _buildScreens(),
          items: _navBarsItems(),
          confineInSafeArea: true,
          backgroundColor:
              const Color.fromARGB(255, 0, 0, 0), // Default is Colors.white.
          handleAndroidBackButtonPress: true, // Default is true.
          resizeToAvoidBottomInset:
              true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
          stateManagement: true, // Default is true.
          hideNavigationBarWhenKeyboardShows:
              true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
          decoration: NavBarDecoration(
            borderRadius: BorderRadius.circular(0.0),
            colorBehindNavBar: const Color.fromARGB(255, 0, 0, 0),
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: const ItemAnimationProperties(
            // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: const ScreenTransitionAnimation(
            // Screen transition animation on change of selected tab.
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle
              .style6, // Choose the nav bar style with this property.
        ),
      ),
    );
  }
}

List<Widget> _buildScreens() {
  return [const WalletMainPage('Your wallet'), const Swap(), const Dapp(), const Settings()];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.wallet),
      title: 'Wallet',
      activeColorPrimary: const Color.fromARGB(255, 165, 186, 7),
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.sync_alt_outlined),
      title: 'Swap',
      activeColorPrimary: const Color.fromARGB(255, 165, 186, 7),
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.menu),
      title: 'Dapp',
      activeColorPrimary: const Color.fromARGB(255, 165, 186, 7),
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.settings),
      title: ("Settings"),
      activeColorPrimary: const Color.fromARGB(255, 165, 186, 7),
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
  ];
}
