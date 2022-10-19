import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SwapPage extends StatefulWidget {
  const SwapPage({super.key});

  @override
  State<SwapPage> createState() => _SwapPageState();
}

class _SwapPageState extends State<SwapPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(children: [
                  Row(children: [
                    SizedBox(
                      width: 40,
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Enter Name',
                            hintText: 'Enter Your Name'),
                            
                      ),
                      
                    ),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Amount',
                            hintText: 'Amount'),
                            
                      ),
                      
                    )
                  ])
                ]))));
  }
}
