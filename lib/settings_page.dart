import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'components/copyButton/copy_button.dart';
import 'context/wallet/wallet_provider.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final bool loading = false;

  @override
  Widget build(BuildContext context) {
    final store = useWallet(context);

    var key = store.getPrivateKey();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(backgroundColor: Colors.black),
        body: Column(
          children: [
            Row(
              children: [
                TextButton(
                    onPressed: !loading
                        ? () {
                            showModalBottomSheet<void>(
                                backgroundColor:
                                    Color.fromARGB(255, 94, 94, 94),
                                enableDrag: true,
                                isScrollControlled: true,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20))),
                                context: context,
                                builder: (BuildContext context) {
                                  return SizedBox(
                                    height: 300,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Text(
                                            'Private Key:\n \n $key',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        CopyButton(
                                            text: const Text('Copy'),
                                            value: key),
                                      ],
                                    ),
                                  );
                                });
                          }
                        : null,
                    child:
                    Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                    
                    
                     child:Text(' View Private Key'))
                    ,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
