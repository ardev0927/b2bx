import 'package:flutter/material.dart';

import '../config/config.dart';
import '../utils/app_strings.dart';
import '../utils/icons.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var formKey = GlobalKey<FormState>();
  var emailCtrl = TextEditingController();
  var passCtrl = TextEditingController();
  var passConfirmCtrl = TextEditingController();
  var email = '';
  var pass = '';
  var passConfrim = '';
  bool offsecureText = true;
  Icon lockIcon = LockIcon().lock;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, bottom: 0),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                child: IconButton(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.all(0),
                    icon: const Icon(Icons.keyboard_backspace),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
              Text(t1SignUp,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900)),
              const SizedBox(height: 30),
              Center(
                child: Image(
                  image: AssetImage(Config().splashIcon),
                  height: 150,
                  width: 150,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 30),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'username@mail.com',
                  labelText: 'Email',
                ),
                controller: emailCtrl,
                keyboardType: TextInputType.emailAddress,
                validator: (String? value) {
                  if (value!.length == 0) return "Email can't be empty";
                  return null;
                },
                onChanged: (String value) {
                  setState(() {
                    email = value;
                  });
                },
              ),
              SizedBox(height: 40),
              TextFormField(
                controller: passCtrl,
                obscureText: offsecureText,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter Password',
                  suffixIcon: IconButton(
                      icon: lockIcon,
                      onPressed: () {
                        lockPressed();
                      }),
                ),
                validator: (String? value) {
                  if (value!.length == 0) return "Password can't be empty";
                  return null;
                },
                onChanged: (String value) {
                  setState(() {
                    pass = value;
                  });
                },
              ),
              TextFormField(
                controller: passConfirmCtrl,
                obscureText: offsecureText,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  hintText: 'Enter Password',
                  suffixIcon: IconButton(
                      icon: lockIcon,
                      onPressed: () {
                        lockPressed();
                      }),
                ),
                validator: (String? value) {
                  if (value!.length == 0) return "Password can't be empty";
                  return null;
                },
                onChanged: (String value) {
                  setState(() {
                    passConfrim = value;
                  });
                },
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => Theme.of(context).primaryColor)),
                    child: Text(
                      t1SignUp,
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    onPressed: () {
                      // handleSignUpwithEmailPassword();
                    }),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Already have an account?'),
                  TextButton(
                    child: Text(
                      t1SignIn,
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void lockPressed() {
    if (offsecureText == true) {
      setState(() {
        offsecureText = false;
        lockIcon = LockIcon().open;
      });
    } else {
      setState(() {
        offsecureText = true;
        lockIcon = LockIcon().lock;
      });
    }
  }
}
