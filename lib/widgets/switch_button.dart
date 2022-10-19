import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';


class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  _SwitchButtonState createState() =>
      _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool status = false;
  
  @override
  Widget build(BuildContext context) {

    return SizedBox(
        width: 343,
        height: 48,
        child: Stack(children: <Widget>[
          Positioned(
              top: 12,
              left: 16,
              child: Container(
                decoration: const BoxDecoration(),
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    Text(
                      'Sign in with Face ID?',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Archivo',
                          fontSize: 16,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.5),
                    ),
                  ],
                ),
              )),
              Positioned(
        top: 8,left: 259,
              child:FlutterSwitch(
            width: 55.0,
            height: 25.0,
            valueFontSize: 25.0,
            toggleSize: 25.0,
            value: status,
            borderRadius: 30.0,
            padding: 8.0,
            activeColor: const Color.fromRGBO(51, 226, 255, 1),
                      inactiveColor: Colors.grey,
            onToggle: (val) {
              setState(() {
                status = val;
              });
            })
        ),
         
        ]));
  }
}
