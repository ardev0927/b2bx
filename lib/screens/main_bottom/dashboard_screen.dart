import 'package:b2bx/config/config.dart';
import 'package:b2bx/screens/dashboard/dashboard_main.dart';
import 'package:b2bx/screens/dashboard/notification_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int dashboardPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    switch (dashboardPageIndex) {
      case 1:
        return NotificationScreen(
          onBackPressed: () {
            setState(() {
              dashboardPageIndex = 0;
            });
          },
        );
      default:
        return DashboardMain(
          onNotificationTap: () {
            setState(() {
              dashboardPageIndex = 1;
            });
          },
        );
    }
  }
}
