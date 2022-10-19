import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:leewsafe/router.dart';
import 'package:leewsafe/services_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

Future<void> main() async {
  // bootstrapping;
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  final stores = await createProviders();

  runApp(MainApp(stores));
}

class MainApp extends StatelessWidget {
  const MainApp(this.stores, {Key? key}) : super(key: key);

  final List<SingleChildWidget> stores;

  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: stores,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/onbording',
          routes: getRoutes(context),
          navigatorObservers: [observer],
          theme: ThemeData(
            primarySwatch: Colors.blue,
            buttonTheme: const ButtonThemeData(
              buttonColor: Colors.blue,
              textTheme: ButtonTextTheme.primary,
            ),
          ),
        ));
  }
}
