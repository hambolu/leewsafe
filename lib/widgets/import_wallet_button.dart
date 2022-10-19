import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class ImportWalletButton extends StatelessWidget {
  const ImportWalletButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.grey,
        side: const BorderSide(color: Colors.grey, width: 2),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25))),
      ),
      onPressed: () {
                  Navigator.of(context).pushNamed('/import');
                },
      child: const Padding(
        padding: EdgeInsets.only(left: 70.0, right: 70.0,top: 7, bottom: 7),
        child: Text('Import Wallet',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 20, fontWeight: FontWeight.w500)),
      ),
    );
  }
}