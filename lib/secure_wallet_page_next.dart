import 'package:leewsafe/wallet_create_page.dart';
import 'package:leewsafe/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'context/setup/wallet_setup_provider.dart';

class SecureWalletPageNext extends StatefulWidget {
  const SecureWalletPageNext({super.key});

  @override
  State<SecureWalletPageNext> createState() => _SecureWalletPageNextState();
}

class _SecureWalletPageNextState extends State<SecureWalletPageNext> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          //margin: const EdgeInsets.only(top: ),
          child: Column(
            children: <Widget>[
              const Image(
                image: AssetImage('assets/progress.png'),
                width: 300,
              ),
              const Image(
                image: AssetImage(
                  'assets/secureseed2.png',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const Text(
                'Remind Me Later',
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 193, 187, 1),
                  side: const BorderSide(
                      color: Color.fromARGB(255, 193, 187, 1), width: 2),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                ),
                // ignore: unnecessary_parenthesis
                onPressed: () {
                  Navigator.popAndPushNamed(context, '/create');
                },

                child: const Padding(
                  padding: EdgeInsets.only(
                      left: 75.0, right: 75.0, top: 7, bottom: 7),
                  child: Text('Start',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ],
          )),
    ));
  }
}
