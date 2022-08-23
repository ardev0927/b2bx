import 'package:b2bx/screens/main_bottom/dashboard_screen.dart';
import 'package:b2bx/screens/main_bottom/more_screen.dart';
import 'package:b2bx/screens/main_bottom/trade_screen.dart';
import 'package:b2bx/screens/main_bottom/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../config/config.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final PageController _pageController = PageController();

  Future _onWillPop() async {
    if (_currentIndex != 0) {
      setState(() => _currentIndex = 0);
      _pageController.animateToPage(0,
          duration: Duration(milliseconds: 200), curve: Curves.easeIn);
    } else {
      await SystemChannels.platform
          .invokeMethod<void>('SystemNavigator.pop', true);
    }
  }

  void changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.animateToPage(index,
        curve: Curves.easeIn, duration: Duration(milliseconds: 250));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (() async => await _onWillPop()),
      child: Scaffold(
        bottomNavigationBar: _bottomNavigationBar(),
        // appBar: PreferredSize(
        //   child: _appbar(),
        //   preferredSize: Size.fromHeight(60),
        // ),
        body: _body(),
      ),
    );
  }

  _body() {
    return Stack(
      children: [
        PageView(
          controller: _pageController,
          allowImplicitScrolling: false,
          physics: NeverScrollableScrollPhysics(),
          children: [
            DashboardScreen(),
            WalletScreen(),
            TradeScreen(),
            MoreScreen()
          ],
        ),
      ],
    );
  }

  _bottomNavigationBar() {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
            alignment: Alignment.bottomCenter,
            height: 60,
            color: Config().bg10Color),
        Container(
          margin: const EdgeInsets.only(top: 30),
          height: 60,
          decoration: BoxDecoration(
            color: Config().bg10Color,
            boxShadow: [
              BoxShadow(
                  color: Config().bg20Color!,
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(0, 3.0)),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 0, right: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                    child: tabItem(0, 'Dashboard', Icons.dashboard_outlined)),
                Expanded(child: tabItem(1, 'Wallet', Icons.wallet_outlined)),
                Expanded(child: tabItem(2, 'Trade', Icons.dashboard_outlined)),
                Expanded(child: tabItem(3, 'More', Icons.more)),
                // tabItem(2, 'assets/images/notifications.svg'),
                // tabItem(3, 'assets/images/manage_accounts.svg'),
              ],
            ),
          ),
        ),
        FloatingActionButton(
          backgroundColor: Config().appColor,
          onPressed: () async {},
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    );
  }

  Widget tabItem(var pos, var title, var icon) {
    return GestureDetector(
      onTap: () {
        changePage(pos);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 20,
            color: _currentIndex == pos
                ? Config().text20Color
                : Config().text10Color,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 10,
              color: _currentIndex == pos
                  ? Config().text20Color
                  : Config().text10Color,
              fontWeight:
                  _currentIndex == pos ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
