import 'package:flutter/material.dart';

class NavCreateButton extends StatelessWidget {
  const NavCreateButton({super.key});

  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator NavbarprocessWidget - INSTANCE
    return SizedBox(
        width: 375,
        height: 44,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 16,
              child: Container(
                decoration: const BoxDecoration(),
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(),
                      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          Icon(
                            Icons.arrow_back,
                            color: Color.fromARGB(255, 255, 255, 255),
                            size: 36.0,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      decoration: const BoxDecoration(),
                      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          Icon(
                            Icons.arrow_back,
                            color: Color.fromARGB(255, 255, 255, 255),
                            size: 36.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          const Positioned(
            top: 0,
            left: 88,
            child: Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 255, 255, 255),
              size: 36.0,
            ),
          ),
        ]));
  }
}
