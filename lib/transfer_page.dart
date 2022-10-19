import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:http/http.dart' as http;
import 'package:leewsafe/components/wallet/balance.dart';
import 'package:leewsafe/components/wallet/transfer_form.dart';
//import 'package:fluttertoast/fluttertoast.dart';
import 'package:toast/toast.dart';

import 'auth/auth_services.dart';
import 'auth/globals.dart';
import 'components/form/paper_validation_summary.dart';
import 'components/wallet/loading.dart';
import 'context/transfer/wallet_transfer_provider.dart';
import 'context/wallet/wallet_provider.dart';

class TransferPage extends HookWidget {

  String _address = '';
  String _amount = '';
  // String _pkey = '';

  // transferPressed() async {
  //   if (_address.isNotEmpty && _amount.isNotEmpty) {
  //     final http.Response response =
  //         await AuthServices.transfer(_address, _amount, _pkey);
  //     showToast('Transfer Successfully',
  //         backgroundColor: Color.fromARGB(255, 13, 79, 133),
  //         duration: Toast.lengthLong,
  //         gravity: Toast.top);
  //     if (response.statusCode == 200) {
  //       Navigator.pop(context);
  //     } else {
  //       errorSnackBar(context, 'Bad Response');
  //     }
  //   } else {
  //     errorSnackBar(context, 'enter all required fields');
  //   }
  // }

  // void showToast(String msg,
  //     {int? duration, int? gravity, required Color backgroundColor}) {
  //   Toast.show(msg,
  //       backgroundColor: backgroundColor, duration: duration, gravity: gravity);
  // }

  @override
  Widget build(BuildContext context) {
    final store = useWallet(context);
    final network = store.state.network;
    final toController = useTextEditingController(text: _address);
    final amountController = useTextEditingController();
    final transferStore = useWalletTransfer(context);

    useEffect(() {
      if (_address != null)
        toController.value = TextEditingValue(text: _address);
    }, [_address]);

    final key = store.getPrivateKey();
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(backgroundColor: Colors.black),
            body:Builder(
         
          builder: (BuildContext newContext){
            
            return Padding(
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
                  if (transferStore.state.errors != null)
                PaperValidationSummary(transferStore.state.errors!.toList()),
                  TextField(
                    controller: toController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide:
                            BorderSide(width: 1, color: Colors.blueGrey),
                      ),
                      labelText: 'Address',
                      hintText: 'Enter Address',
                    ),
                    onChanged: (value) {
                      _address = value;
                    },
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: amountController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        borderSide:
                            BorderSide(width: 1, color: Colors.blueGrey),
                      ),
                      labelText: 'Amount',
                      hintText: 'Enter Amount',
                    ),
                    keyboardType: TextInputType.phone,
                    onChanged: (value) {
                      _amount = value;
                    },
                  ),

                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => {
                      toController.value.text,
                      amountController.value.text,
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 213, 166, 11),
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold)),
                    child: const Text('Send Now'),
                  ),
                ])
                );
          }
                )
                ));
  }
}
