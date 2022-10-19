import 'dart:convert';

import 'package:leewsafe/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;

import 'auth/auth_services.dart';
import 'auth/globals.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final String _email = '';
  final String _password = '';

  loginPressed() async {
    // if (_email.isNotEmpty && _password.isNotEmpty) {
    //   final http.Response response =
    //       await AuthServices.login(_email, _password);

    //   if (response.statusCode == 200) {
    //     // Navigator.push(
    //     //     context,
    //     //     MaterialPageRoute(
    //     //       builder: (BuildContext context) => const HomeScreen(),
    //     //     ));
    //   } else {
    //     errorSnackBar(context, "error");
    //   }
    // } else {
    //   errorSnackBar(context, 'enter all required fields');
    // }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                    padding:
                        const EdgeInsets.only(top: 80, right: 15, left: 15),
                    child: Column(children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Welcome Back',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20,
                              fontWeight: FontWeight.w500)),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Email',
                            hintText: 'Email',
                          ),
                          onChanged: (value) {
                            final _email = value;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: TextField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: ' Password',
                            hintText: ' Password',
                          ),
                          onChanged: (value) {
                            final _password = value;
                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                      const SizedBox(height: 20),
                      RoundedButton(
                        btnText: 'Login',
                        onBtnPressed: () => {},
                      ),
                    ])))));
  }
}
