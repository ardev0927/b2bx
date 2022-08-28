import 'package:b2bx/config/config.dart';
import 'package:flutter/material.dart';

class WalletUSDT extends StatefulWidget {
  const WalletUSDT({super.key});

  @override
  State<WalletUSDT> createState() => _WalletUSDTState();
}

class _WalletUSDTState extends State<WalletUSDT> {
  var formKey = GlobalKey<FormState>();

  Icon tempIcon = Icon(Icons.label);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Config().bg10Color,
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: const Text(
          'Wallets USDT',
          style: TextStyle(),
        ),
        centerTitle: true,
        actions: [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            SizedBox(
              height: 60,
              child: Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Config().text20Color),
                    child: Center(
                      child: Text(
                        'T',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '0.00',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Hold: 0.00',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Expanded(
                child: Column(
                  children: <Widget>[
                    Divider(
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                    ),
                    child: Text(
                      'No Operations Available',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Expanded(
                child: Column(
                  children: <Widget>[
                    Divider(
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: new EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Transactions',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: new EdgeInsets.only(top: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Sorry you haven\'t had any transactions yet',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: new EdgeInsets.only(top: 10),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            Icons.back_hand,
                            color: Colors.yellow,
                          )),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
