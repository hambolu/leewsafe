import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnText;
  final Function onBtnPressed;

  const RoundedButton(
      {Key? key, required this.btnText, required this.onBtnPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      color: Color.fromARGB(255, 193, 187, 1),
      borderRadius: BorderRadius.circular(50),
      child: MaterialButton(
        onPressed: () {
          onBtnPressed();
        },
        minWidth: 320,
        height: 40,
        child: Text(
          btnText,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
