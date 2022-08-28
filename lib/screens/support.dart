import 'package:flutter/material.dart';

import '../config/config.dart';
import '../utils/icons.dart';

class Support extends StatefulWidget {
  const Support({super.key});

  @override
  State<Support> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<Support> {
  var formKey = GlobalKey<FormState>();
  var emailCtrl = TextEditingController();
  var passCtrl = TextEditingController();
  var email = '';
  var pass = '';
  bool offsecureText = true;
  Icon lockIcon = LockIcon().lock;
  Icon arrowLeft = ArrowLeft().arrowLeft;
  List<bool> _isSelected = [true, false];

  void createButton() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Text(
                '24/7 Customer Support',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 20),
              const Text(
                'How can we help you today?',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromARGB(255, 130, 134, 145),
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              ToggleButtons(
                children: <Widget>[
                  Container(
                    height: 20,
                    width: (MediaQuery.of(context).size.width - 74) / 2,
                    child: Text(
                      'Opened Tickets',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: 20,
                    width: (MediaQuery.of(context).size.width - 74) / 2,
                    child: Text(
                      'Resolved Tickets',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
                isSelected: _isSelected,
                onPressed: (int index) {
                  setState(() {
                    _isSelected[index] = !_isSelected[index];
                    if (index == 0) {
                      _isSelected[1] = !_isSelected[1];
                    } else {
                      _isSelected[0] = !_isSelected[0];
                    }
                  });
                },
                color: const Color.fromARGB(255, 75, 174, 135),
                selectedColor: Colors.black,
                fillColor: Color.fromARGB(255, 75, 174, 135),
                borderColor: Color.fromARGB(255, 75, 174, 135),
                selectedBorderColor: Color.fromARGB(255, 75, 174, 135),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              const SizedBox(height: 20),
              TextFormField(
                obscureText: offsecureText,
                controller: passCtrl,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    // borderSide: BorderSide(color: Config().appColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: Config().appColor),
                  ),
                  fillColor: Config().bg20Color,
                  filled: true,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                  hintText: 'Search ticket',
                  prefixIcon: Icon(Icons.search),
                ),
                // validator: (String? value) {
                //   if (value!.length == 0) return "Password can't be empty";
                //   return null;
                // },
                // onChanged: (String value) {
                //   setState(() {
                //     pass = value;
                //   });
                // },
              ),
              // const ListTile(
              //   leading: Icon(
              //     Icons.search,
              //     color: Color.fromARGB(255, 130, 134, 145),
              //     size: 22,
              //   ),
              //   title:
              //   tileColor: Color.fromARGB(255, 57, 58, 63),
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.all(Radius.circular(20)),
              //   ),
              //   dense: true,
              //   visualDensity: VisualDensity(vertical: -3),
              // ),
              const SizedBox(height: 40),
              Text(
                'You have no opened tickets',
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 130, 134, 145),
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              SizedBox(
                height: 45,
                width: MediaQuery.of(context).size.width,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => Theme.of(context).primaryColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: Text(
                    'Create New Ticket',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  onPressed: () {
                    // handleSignInwithemailPassword();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
