import 'package:flutter/material.dart';
import 'constants.dart';
import 'home_page.dart';
import 'splash_screen.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  // Below two lines are added for fetching data from firebase storage
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            appBarTheme: AppBarTheme(
                iconTheme: IconThemeData(color: ColorConstants.primaryColor),
                elevation: 0,
                color: Colors.white)),
        initialRoute: 'start',
        routes: {
          'start': (context) => SplashScreen(),
          'home': (context) => HomePage(
                key: Key(''),
              ),
        });
  }
}
