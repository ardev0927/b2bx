import 'package:flutter/material.dart';

import '../../config/config.dart';

class DashboardMain extends StatefulWidget {
  const DashboardMain({super.key, required this.onNotificationTap});

  final Function()? onNotificationTap;

  @override
  State<DashboardMain> createState() => _DashboardMainState();
}

class _DashboardMainState extends State<DashboardMain> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: SizedBox(
        width: width,
        child: Stack(
          children: [
            Column(
              children: [
                _topWidget(),
                _balanceWidget(),
                _arrowWidget(),
                // _mainWidget(),
              ],
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: _mainWidget(),
            )
          ],
        ),
      ),
    );
  }

  _topWidget() {
    return SizedBox(
      height: 60,
      child: Stack(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: widget.onNotificationTap,
                child: Container(
                  width: 40,
                  height: 40,
                  margin: const EdgeInsets.only(top: 16, left: 16),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Config().bg10Color,
                  ),
                  child: Icon(
                    Icons.notifications,
                    size: 20,
                    color: Config().text10Color,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                width: 40,
                height: 40,
                margin: const EdgeInsets.only(top: 16, right: 16),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Config().bg10Color,
                ),
                child: Icon(
                  Icons.camera,
                  size: 20,
                  color: Config().text10Color,
                ),
              ),
              Container(
                width: 40,
                height: 40,
                margin: const EdgeInsets.only(top: 16, right: 16),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Config().bg10Color,
                ),
                child: Icon(
                  Icons.headphones_rounded,
                  size: 20,
                  color: Config().text10Color,
                ),
              ),
            ],
          ),
          const Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text(
                'Dashboard',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _balanceWidget() {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 8, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              'Total Balance',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Config().text10Color),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              '0.00 USD',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }

  _arrowWidget() {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          margin: const EdgeInsets.only(top: 16, left: 16),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Config().bg10Color,
          ),
          child: Icon(
            Icons.arrow_circle_down_outlined,
            size: 25,
            color: Config().text20Color,
          ),
        ),
        Container(
          width: 40,
          height: 40,
          margin: const EdgeInsets.only(top: 16, left: 16),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Config().bg10Color,
          ),
          child: Icon(
            Icons.arrow_circle_up_outlined,
            size: 25,
            color: Config().text20Color,
          ),
        ),
      ],
    );
  }

  _mainWidget() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.6,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
        color: Config().bg10Color,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16), topRight: Radius.circular(16)),
      ),
      child: Column(
        children: [
          ListTile(
            onTap: () {},
            leading: Icon(Icons.add_moderator,
                color: Config().text20Color, size: 30),
            title: Text(
              'Your verification',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 10,
                  color: Config().text20Color),
            ),
            subtitle: Text(
              'Level 0',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Config().text20Color),
            ),
            trailing:
                Icon(Icons.arrow_forward_ios, color: Config().text20Color),
          ),
        ],
      ),
    );
  }
}
