import 'dart:async';
import 'dart:convert';

import 'package:leewsafe/auth/auth_services.dart';
import 'package:leewsafe/context/setup/wallet_setup_provider.dart';
import 'package:leewsafe/secure_wallet_page.dart';
import 'package:leewsafe/wallet_create_page.dart';
import 'package:leewsafe/widgets/agreement_check_box.dart';
import 'package:leewsafe/widgets/button_widget.dart';
import 'package:leewsafe/widgets/switch_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:http/http.dart' as http;
import 'package:platform_device_id/platform_device_id.dart';

class CreateWallet extends StatefulWidget {
  const CreateWallet({Key? key}) : super(key: key);

  @override
  State<CreateWallet> createState() => _CreateWalletState();
}

class _CreateWalletState extends State<CreateWallet> {
  String? _deviceId;
  final String _email = '';
  bool value = false;

  final String _password = '';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    String? deviceId;

    try {
      deviceId = await PlatformDeviceId.getDeviceId;
    } on PlatformException {
      deviceId = 'Failed to get deviceId.';
    }
    if (!mounted) return;

    setState(() {
      _deviceId = deviceId;
      debugPrint('deviceId->$_deviceId');
    });
  }

  // ignore: always_declare_return_types
  createAccountPressed() async {
    final http.Response response =
        await AuthServices.register(_email, _password, _deviceId!);

    if (response.statusCode == 200) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => const SecureWalletPage()));
    } else {
      print(response);
    }
  }

  final TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                    padding:
                        const EdgeInsets.only(top: 50, right: 15, left: 15),
                    child: Column(children: [
                      const Image(image: AssetImage('assets/progress1.png')),
                      const SizedBox(
                        height: 10,
                      ),
                      const Image(
                          image: AssetImage('assets/create_password.png')),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: TextField(
                          obscureText: false,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: ' Email',
                            hintText: ' Email',
                          ),
                          onChanged: (value) {
                            final _email = value;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: TextField(
                          controller: _passwordcontroller,
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
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        // ignore: unnecessary_const
                        child: FlutterPwValidator(
                          controller: _passwordcontroller,
                          minLength: 8,
                          uppercaseCharCount: 1,
                          numericCharCount: 1,
                          specialCharCount: 1,
                          width: 400,
                          height: 150,
                          onSuccess: () {
                            final message = print('Good');
                          },
                        ),
                      ),
                      const SwitchButton(),
                      const SizedBox(height: 20),
                      const AgreementCheckBox(),
                      const SizedBox(height: 20),
                      RoundedButton(
                        btnText: 'Create Password',
                        onBtnPressed: () => createAccountPressed(),
                      ),
                    ])))));
  }
}
