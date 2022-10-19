import 'package:flutter/material.dart';

class SeedView extends StatefulWidget {
  const SeedView({super.key});

  @override
  _SeedViewState createState() => _SeedViewState();
}

class _SeedViewState extends State<SeedView> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator 44viewseedphraseWidget - FRAME

    return Container(
        width: 375,
        height: 812,
        decoration: BoxDecoration(
          color: Color.fromRGBO(8, 10, 12, 1),
        ),
        child: Stack(children: <Widget>[
          const Positioned(
            top: 714,
            left: 0,
            child: Text('hello'),
          ),
          const Positioned(
              top: 112,
              left: 62,
              child: Text(
                'Write Down Your Seed Phrase',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(223, 187, 6, 1),
                    fontFamily: 'Archivo',
                    fontSize: 18,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5555555555555556),
              )),
          const Positioned(
              top: 156,
              left: 24,
              child: Text(
                'This is your seed phrase. Write it down on a paper and keep it in a safe place. You will be asked to re-enter this phrase (in order) on the next step.',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(143, 162, 183, 1),
                    fontFamily: 'Archivo',
                    fontSize: 14,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.7142857142857142),
              )),
          Positioned(
              top: 292,
              left: 24,
              child: Container(
                  width: 327,
                  height: 320,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 327,
                            height: 320,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              border: Border.all(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                width: 1,
                              ),
                            ))),
                    Positioned(
                        top: 24,
                        left: 24,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                            color: Color.fromRGBO(24, 30, 37, 1),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                '1. future',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Archivo',
                                    fontSize: 14,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.7142857142857142),
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                        top: 72,
                        left: 24,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                            color: Color.fromRGBO(24, 30, 37, 1),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                '2. use',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Archivo',
                                    fontSize: 14,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.7142857142857142),
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                        top: 120,
                        left: 24,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                            color: Color.fromRGBO(24, 30, 37, 1),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                '3. abuse',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Archivo',
                                    fontSize: 14,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.7142857142857142),
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                        top: 216,
                        left: 24,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                            color: Color.fromRGBO(24, 30, 37, 1),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                '5. disagree',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Archivo',
                                    fontSize: 14,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.7142857142857142),
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                        top: 168,
                        left: 24,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                            color: Color.fromRGBO(24, 30, 37, 1),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                '4. bubble',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Archivo',
                                    fontSize: 14,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.7142857142857142),
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                        top: 264,
                        left: 24,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                            color: Color.fromRGBO(24, 30, 37, 1),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                '6. yard',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Archivo',
                                    fontSize: 14,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.7142857142857142),
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                        top: 24,
                        left: 171,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                            color: Color.fromRGBO(24, 30, 37, 1),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                '7. exit',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Archivo',
                                    fontSize: 14,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.7142857142857142),
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                        top: 72,
                        left: 171,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                            color: Color.fromRGBO(24, 30, 37, 1),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                '8. enact',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Archivo',
                                    fontSize: 14,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.7142857142857142),
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                        top: 120,
                        left: 171,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                            color: Color.fromRGBO(24, 30, 37, 1),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                '9. drum',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Archivo',
                                    fontSize: 14,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.7142857142857142),
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                        top: 216,
                        left: 171,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                            color: Color.fromRGBO(24, 30, 37, 1),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                '11. target',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Archivo',
                                    fontSize: 14,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.7142857142857142),
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                        top: 168,
                        left: 171,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                            color: Color.fromRGBO(24, 30, 37, 1),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                '10. frequent',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Archivo',
                                    fontSize: 14,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.7142857142857142),
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                        top: 264,
                        left: 171,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                            color: Color.fromRGBO(24, 30, 37, 1),
                          ),
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                '12. organ',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Archivo',
                                    fontSize: 14,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.7142857142857142),
                              ),
                            ],
                          ),
                        )),
                  ]))),
          const Positioned(top: 44, left: 0, child: Text('hello2')),
        ]));
  }
}
