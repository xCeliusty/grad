import 'package:busgo/authentication/auth_form.dart';
import 'package:busgo/authentication/auth_screen.dart';
import 'package:busgo/pages/calender.dart';
import 'package:busgo/pages/traffic_ui.dart';

import 'package:busgo/screens/maps.dart';
import 'package:busgo/pages/splash_screen.dart';
import 'package:busgo/pages/edit_profile.dart';
import 'package:busgo/screens/test.dart';
import 'package:busgo/sevices/traffic_service.dart';
// import 'package:busgo/services/traffic_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/maps.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TrafficService()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext 
  context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        accentColor: Colors.white,
      ),
      routes: {
        AuthScreen.routeName: (BuildContext context) {
          return const AuthScreen();
        },

        //FromTo.routeName: (context) => const FromTo(),
        Editprofile.routeName: (context) => Editprofile(),
        '/Calender': (context) => Calender(),

        '/TrafficSummary': (context) => TrafficSummaryScreen(),
        '/FromTo': (context) => FromTo(),
        '/Query': (context) => Query(),

      },
       //home: const Splash(),
       home:  Editprofile(),
    );
  }
}
