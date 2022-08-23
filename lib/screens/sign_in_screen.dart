import 'package:b2bx/screens/main_screen.dart';
import 'package:b2bx/screens/sign_up_screen.dart';
import 'package:b2bx/utils/app_strings.dart';
import 'package:b2bx/utils/next_screen.dart';
import 'package:flutter/material.dart';

import '../config/config.dart';
import '../utils/icons.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var formKey = GlobalKey<FormState>();
  var emailCtrl = TextEditingController();
  var passCtrl = TextEditingController();
  var email = '';
  var pass = '';
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
              const SizedBox(height: 50),
              const Text(t1WelcomeB2bx,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900)),
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
              const Text(t1SignIn,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900)),
              const SizedBox(height: 30),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'username@mail.com', labelText: 'Email'),
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
              const SizedBox(height: 10),
              TextFormField(
                obscureText: offsecureText,
                controller: passCtrl,
                decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter Password',
                  //prefixIcon: Icon(Icons.vpn_key),
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
              const SizedBox(height: 10),
              Container(
                alignment: Alignment.centerRight,
                child: TextButton(
                  child: Text(
                    t1ForgotPassword,
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  onPressed: () {
                    // Navigator.push(context, CupertinoPageRoute(builder: (context) => ForgotPasswordPage()));
                  },
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 45,
                child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => Theme.of(context).primaryColor)),
                    child: Text(t1SignIn,
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                    onPressed: () {
                      // handleSignInwithemailPassword();
                      nextScreen(context, MainScreen());
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Don't have an account?"),
                  TextButton(
                    child: Text(t1SignUp,
                        style:
                            TextStyle(color: Theme.of(context).primaryColor)),
                    onPressed: () {
                      nextScreen(context, SignUpScreen());
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
