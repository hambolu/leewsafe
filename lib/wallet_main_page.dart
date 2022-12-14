import 'package:leewsafe/components/wallet/balance.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:leewsafe/receive_page.dart';
import 'package:leewsafe/transfer_page.dart';
import 'package:leewsafe/wallet_transfer_page.dart';

import 'components/dialog/alert.dart';
import 'components/menu/main_menu.dart';
import 'components/wallet/change_network.dart';
import 'context/wallet/wallet_provider.dart';

class WalletMainPage extends HookWidget {
  const WalletMainPage(this.title, {Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final store = useWallet(context);
    final address = store.state.address;
    final network = store.state.network;

    useEffect(() {
      store.initialise();
    }, []);

    useEffect(
      () => store.listenTransfers(address, network),
      [address, network],
    );

    return Scaffold(
      backgroundColor: Colors.black,
      drawer: MainMenu(
        network: network,
        address: address,
        onReset: () => Alert(
            title: 'Warning',
            text:
                'Without your seed phrase or private key you cannot restore your wallet balance',
            actions: [
              TextButton(
                child: const Text('cancel'),
                onPressed: () => Navigator.of(context).pop(),
              ),
              TextButton(
                child: const Text('reset'),
                onPressed: () async {
                  await store.resetWallet();
                  Navigator.popAndPushNamed(context, '/');
                },
              )
            ]).show(context),
        onRevealKey: () => Alert(
            title: 'Private key',
            text:
                'WARNING: In production environment the private key should be protected with password.\r\n\r\n${store.getPrivateKey() ?? "-"}',
            actions: [
              TextButton(
                child: const Text('close'),
                onPressed: () => Navigator.of(context).pop(),
              ),
              TextButton(
                child: const Text('copy and close'),
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: store.getPrivateKey()));
                  Navigator.of(context).pop();
                },
              ),
            ]).show(context),
      ),
      // appBar: AppBar(
      //   title: Text(title),
      //   actions: [
      //     Builder(
      //       builder: (context) => IconButton(
      //         icon: const Icon(Icons.refresh),
      //         onPressed: !store.state.loading
      //             ? () async {
      //                 await store.refreshBalance();
      //                 ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      //                   content: Text('Balance updated'),
      //                   duration: Duration(milliseconds: 800),
      //                 ));
      //               }
      //             : null,
      //       ),
      //     ),
      //     IconButton(
      //       icon: const Icon(Icons.send),
      //       onPressed: () {
      //         // Navigator.pushNamed(context, 'transfer', arguments: store.state.network);

      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(builder: (context) => const TransferPage()),
      //         );
      //       },
      //     ),
      //   ],
      // ),
      body: Container(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: ChangeNetwork(
                onChange: store.changeNetwork,
                currentValue: store.state.network,
                loading: store.state.loading,
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Balance(
                address: store.state.address,
                ethBalance: store.state.ethBalance,
                tokenBalance: store.state.tokenBalance,
                symbol: network.config.symbol,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 Spacer(),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  TransferPage()));
                  },
                  icon: Icon(Icons.telegram),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    side: BorderSide(
                      width: 1.0,
                      color: Colors.blueGrey,
                    ),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                  ),
                  label: Text("Send"),
                ),
                 Spacer(),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ReceivePage()));
                  },
                  icon: Icon(Icons.arrow_downward_rounded),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    side: BorderSide(
                      width: 1.0,
                      color: Colors.blueGrey,
                    ),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                  ),
                  label: Text("Receive"),
                ),
                Spacer(),
                ElevatedButton.icon(
                  onPressed: () {
                    
                  },
                  icon: Icon(Icons.shopping_bag_rounded),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    side: BorderSide(
                      width: 1.0,
                      color: Colors.blueGrey,
                    ),
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                  ),
                  label: Text("Buy"),
                ),
                Spacer()
              ],
            )
          ],
        ),
      ),
    );
  }
}
