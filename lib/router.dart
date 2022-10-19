import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:leewsafe/model/network_type.dart';
import 'package:leewsafe/qrcode_reader_page.dart';
import 'package:leewsafe/service/configuration_service.dart';
import 'package:leewsafe/utils/route_utils.dart';
import 'package:leewsafe/wallet_create_page.dart';
import 'package:leewsafe/wallet_import_page.dart';
import 'package:leewsafe/wallet_main_page.dart';
import 'package:leewsafe/wallet_transfer_page.dart';
import 'package:provider/provider.dart';

import 'context/setup/wallet_setup_provider.dart';
import 'context/transfer/wallet_transfer_provider.dart';
import 'context/wallet/wallet_provider.dart';
import 'intro_page.dart';
import 'onborading_page.dart';
import 'wallet.dart';



Map<String, WidgetBuilder> getRoutes(context) {
  return {
    '/onbording': (BuildContext context) {
      final configurationService = Provider.of<ConfigurationService>(context);
      if (configurationService.didSetupWallet())
        return WalletProvider(
            // ignore: prefer_const_constructors
            builder: (context, store) => Wallet());
      return const OnBoradingPage();
    },
    '/': (BuildContext context) {
      final configurationService = Provider.of<ConfigurationService>(context);
      if (configurationService.didSetupWallet())
        return WalletProvider(
            // ignore: prefer_const_constructors
            builder: (context, store) => WalletMainPage('Your wallet'));

      return const IntroPage();
    },
    '/create': (BuildContext context) =>
        WalletSetupProvider(builder: (context, store) {
          useEffect(() {
            store.generateMnemonic();
          }, []);

          // ignore: prefer_const_constructors
          return WalletCreatePage('Create wallet');
        }),
    '/import': (BuildContext context) => WalletSetupProvider(
          // ignore: prefer_const_constructors
          builder: (context, store) => WalletImportPage('Import wallet'),
        ),
    '/transfer': (BuildContext context) => WalletTransferProvider(
          // ignore: prefer_const_constructors
          builder: (context, store) => WalletTransferPage(
            title: 'Send Tokens',
            network: getRouteArgs<NetworkType>(context),
          ),
        ),
    '/qrcode_reader': (BuildContext context) => QRCodeReaderPage(
          title: 'Scan QRCode',
          onScanned: ModalRoute.of(context)?.settings.arguments as OnScanned?,
        )
  };
}
