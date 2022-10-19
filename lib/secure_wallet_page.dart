import 'package:leewsafe/secure_wallet_page_next.dart';
import 'package:leewsafe/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class SecureWalletPage extends StatefulWidget {
  const SecureWalletPage({super.key});

  @override
  State<SecureWalletPage> createState() => _SecureWalletPageState();
}

class _SecureWalletPageState extends State<SecureWalletPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              const Image(
                image: AssetImage('assets/progress.png'),
                width: 300,
              ),
              const Image(
                image: AssetImage(
                  'assets/secureseed1.png',
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
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const SecureWalletPageNext(),
                    )),
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
