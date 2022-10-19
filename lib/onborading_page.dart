import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:leewsafe/widgets/round_button_widget.dart';

class OnBoradingPage extends StatefulWidget {
  const OnBoradingPage({super.key});

  @override
  State<OnBoradingPage> createState() => _OnBoradingPageState();
}

class _OnBoradingPageState extends State<OnBoradingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: const EdgeInsets.only(top: 120),
        child: PageView(
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: const [
                    Image(
                      image: AssetImage(
                        'assets/slide1.png',
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    RoundButtonWidget()
                  ],
                )),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: const [
                    Image(
                      image: AssetImage('assets/slide2.png'),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    RoundButtonWidget()
                  ],
                )),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: const [
                    Image(
                      image: AssetImage('assets/slide3.png'),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    RoundButtonWidget()
                  ],
                )),
          ],
        ),
      ),
    ));
  }
}
