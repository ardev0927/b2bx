import 'package:b2bx/config/config.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key, required this.onBackPressed});

  final Function()? onBackPressed;

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onBackPressed(context),
      child: Scaffold(
        backgroundColor: Config().bg10Color,
        appBar: AppBar(
          leading: IconButton(
              onPressed: widget.onBackPressed,
              icon: Icon(Icons.arrow_back_ios)),
          title: Text(
            'Notifications',
          ),
        ),
        body: Center(
          child: Text(
            'There are no announcements to show',
            style: TextStyle(color: Config().text10Color, fontSize: 16),
          ),
        ),
      ),
    );
  }

  Future<bool> _onBackPressed(context) async {
    // widget.onBackPressed;
    return true;
  }
}
