import 'package:leewsafe/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Color.fromARGB(0, 158, 158, 158),
        side:
            const BorderSide(color: Color.fromARGB(0, 158, 158, 158), width: 0),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25))),
      ),
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => const LoginPage(),
          )),
      child: const Padding(
        padding: EdgeInsets.only(left: 70.0, right: 70.0, top: 5, bottom: 5),
        child: Text('Login',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 20,
                fontWeight: FontWeight.w500)),
      ),
    );
  }
}
