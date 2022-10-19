import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Swap extends StatefulWidget {
  const Swap({super.key});

  @override
  State<Swap> createState() => _SwapState();
}

class _SwapState extends State<Swap> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black
            ),
      ),
    );
  }
}