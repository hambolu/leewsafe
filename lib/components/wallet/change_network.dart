import 'package:leewsafe/model/network_type.dart';
import 'package:leewsafe/utils/wallet_icons.dart';
import 'package:flutter/material.dart';

class ChangeNetwork extends StatelessWidget {
  const ChangeNetwork(
      {Key? key,
      required this.currentValue,
      required this.onChange,
      this.loading = false})
      : super(key: key);

  final NetworkType currentValue;
  final bool loading;
  final Function(NetworkType network) onChange;

  @override
  Widget build(BuildContext context) {
    final networks = NetworkType.enabledValues;
    const itemHeight = 48.0;

    return ElevatedButton(
      child: Text(currentValue.config.label),
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          textStyle: const TextStyle(fontSize: 16)),
      onPressed: !loading
          ? () {
              showModalBottomSheet<void>(
                backgroundColor:Color.fromARGB(255, 94, 94, 94),
                enableDrag: true,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20))),
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: itemHeight * networks.length,
                    child: Column(
                      children: <Widget>[
                        for (var network in networks)
                          TextButton(
                            style: TextButton.styleFrom(
                              minimumSize:
                                  const Size(double.infinity, itemHeight),
                            ),
                            onPressed: () {
                              onChange(network);
                              Navigator.pop(context);
                            },
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(network.config.label,
                                  style: TextStyle(color: Color.fromARGB(255, 221, 221, 221)),
                                  ),
                                  if (network == currentValue) ...[
                                    const SizedBox(width: 10),
                                    const Icon(
                                      WalletIcons.check,
                                      size: 15,
                                    )
                                  ]
                                ]),
                          ),
                      ],
                    ),
                  );
                },
              );
            }
          : null,
    );
  }
}
