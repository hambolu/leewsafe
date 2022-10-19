import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../create_wallet.dart';



// import '../wallet_setup.dart';

class CreateWalletButton extends StatelessWidget {
  const CreateWalletButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 193, 187, 1),
        side: const BorderSide(color: Color.fromARGB(255, 193, 187, 1), width: 2),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25))),
      ),
      onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const CreateWallet(),
                            )),
    //  onPressed: () {
    //             Navigator.of(context).pushNamed('/create');
    //           },
      child: const Padding(
        padding: EdgeInsets.only(left: 70.0, right: 70.0,top: 7, bottom: 7),
        child: Text('Create Wallet',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 20, fontWeight: FontWeight.w500)),
      ),
    );
  }
}