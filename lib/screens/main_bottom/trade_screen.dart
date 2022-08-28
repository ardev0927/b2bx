import 'package:b2bx/config/config.dart';
import 'package:b2bx/screens/trade/assets_tab.dart';
import 'package:b2bx/screens/trade/markets_tab.dart';
import 'package:b2bx/screens/trade/orders_tab.dart';
import 'package:flutter/material.dart';

class TradeScreen extends StatefulWidget {
  const TradeScreen({super.key});

  @override
  State<TradeScreen> createState() => _TradeScreenState();
}

class _TradeScreenState extends State<TradeScreen>
    with TickerProviderStateMixin {
  TabController? _tabController;

  final List<Tab> _tabs = [
    Tab(
      text: 'Markets',
    ),
    Tab(
      text: 'Orders',
    ),
    Tab(
      text: 'Assets',
    ),
  ];

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Config().bg10Color,
      appBar: AppBar(
        leading: Container(),
        title: Text('Trade'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Config().text20Color,
              ))
        ],
      ),
      body: _body(),
    );
  }

  _body() {
    return DefaultTabController(
      length: _tabs.length,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            child: TabBar(
              controller: _tabController,
              labelColor: Config().text30Color,
              unselectedLabelColor: Config().text10Color,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Config().appColor,
              indicatorWeight: 4,
              labelPadding: const EdgeInsets.all(4),
              tabs: _tabs,
            ),
          ),
          Flexible(
            child: TabBarView(
              controller: _tabController,
              children: [
                MarketsTab(),
                OrdersTab(),
                AssetsTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
