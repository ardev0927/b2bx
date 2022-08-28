import 'package:b2bx/config/config.dart';
import 'package:flutter/material.dart';

import '../../utils/icons.dart';
import '../../utils/next_screen.dart';
import '../support.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  var formKey = GlobalKey<FormState>();
  var emailCtrl = TextEditingController();
  var passCtrl = TextEditingController();
  var email = '';
  var pass = '';
  bool offsecureText = true;
  Icon arrowRight = ArrowRight().arrowRight;
  Icon outIcon = OutIcon().out;
  Icon accountIcon = AccountIcon().account;
  Icon lockIcon = LockIcon2().lock;
  Icon infoIcon = PersonInfoIcon().info;
  Icon supportIcon = CustomerSupoprtIcon().support;
  Icon verficationIcon = VerificationIcon().verify;
  Icon documentIcon = VerifiedDocumentIcon().document;
  Icon deviceIcon = DeviceManagementIcon().device;
  Icon addressIcon = AddressManagementIcon().address;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Config().bg10Color,
      appBar: AppBar(
        leading: Container(),
        actions: [
          IconButton(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.all(0),
            icon: outIcon,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [
              Text(
                'More',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Config().bg20Color,
                  ),
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                    child: accountIcon,
                                  ),
                                  Text(
                                    'Account settings',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ]),
                          ),
                          arrowRight,
                        ],
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Config().bg20Color,
                  ),
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                    child: lockIcon,
                                  ),
                                  Text(
                                    'Authentication',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ]),
                          ),
                          arrowRight,
                        ],
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Config().bg20Color,
                  ),
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                    child: infoIcon,
                                  ),
                                  Text(
                                    'Personal information',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ]),
                          ),
                          arrowRight,
                        ],
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    nextScreen(context, Support());
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Config().bg20Color,
                  ),
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                    child: supportIcon,
                                  ),
                                  Text(
                                    '24/7 Customer Support',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ]),
                          ),
                          arrowRight,
                        ],
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Config().bg20Color,
                  ),
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                    child: verficationIcon,
                                  ),
                                  Text(
                                    'Verification: Level 0',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ]),
                          ),
                          arrowRight,
                        ],
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Config().bg20Color,
                  ),
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                    child: documentIcon,
                                  ),
                                  Text(
                                    'Verified documents',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ]),
                          ),
                          arrowRight,
                        ],
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Config().bg20Color,
                  ),
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                    child: deviceIcon,
                                  ),
                                  Text(
                                    'Device management',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ]),
                          ),
                          arrowRight,
                        ],
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Config().bg20Color,
                  ),
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                    child: addressIcon,
                                  ),
                                  Text(
                                    'Address management',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ]),
                          ),
                          arrowRight,
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
