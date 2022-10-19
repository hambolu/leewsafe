import 'package:leewsafe/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:leewsafe/wallet_setup.dart';

class RoundButtonWidget extends StatelessWidget {
  const RoundButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.grey,
        side: const BorderSide(color: Colors.grey, width: 2),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25))),
      ),
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => const IntroPage(),
          )),
      child: const Padding(
        padding: EdgeInsets.only(left: 70.0, right: 70.0, top: 5, bottom: 5),
        child: Text('Get Started',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 20,
                fontWeight: FontWeight.w500)),
      ),
    );
  }
}
