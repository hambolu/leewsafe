import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:leewsafe/components/copyButton/copy_button.dart';
import 'package:leewsafe/components/wallet/balance.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'context/wallet/wallet_provider.dart';

class ReceivePage extends StatefulWidget {
  const ReceivePage({super.key});

  @override
  State<ReceivePage> createState() => _ReceivePageState();
}

class _ReceivePageState extends State<ReceivePage> {
  @override
  Widget build(BuildContext context) {
    final store = useWallet(context);
    final address = store.state.address;
    final network = store.state.network;

    var key = store.getPrivateKey();
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(backgroundColor: Colors.black),
            body: Padding(
                padding: EdgeInsets.only(right: 16.0, left: 16.0),
                child: Column(children: [
                  SizedBox(height: 90),
                  // Text(
                  //   '$key $network',
                  // ),
                  Balance(
                    address: store.state.address,
                    ethBalance: store.state.ethBalance,
                    tokenBalance: store.state.tokenBalance,
                    symbol: network.config.symbol,
                  ),
                  SizedBox(height: 50),
                  QrImage(
                    data: address!,
                    size: 150.0,
                    foregroundColor: Colors.white,
                  ),
                  SizedBox(height: 20),

                  Text(
                    'Address:\n $address',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  CopyButton(text: const Text('Copy'), value: address),
                ]))));
  }
}
