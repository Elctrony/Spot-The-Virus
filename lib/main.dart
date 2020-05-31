import 'package:covid_19/screen/assistant_screen.dart';
import 'package:covid_19/screen/home_screen.dart';
import 'package:covid_19/screen/map_screen.dart';
import 'package:covid_19/screen/notification.dart';
import 'package:covid_19/screen/qr_scanner.dart';
import 'package:covid_19/screen/symptoms.dart';
import 'package:covid_19/screen/tips.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:splashscreen/splashscreen.dart';

main() => runApp(RootApp());

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    FirebaseMessaging().subscribeToTopic('covid');
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    return MaterialApp(
      title: 'Covid-19',
      home: SplashScreen(
      seconds: 3,
      navigateAfterSeconds: HomeScreen(),
      title: new Text('Spot The Virus',
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0
      ),),
      image: new Image.asset('assets/images/icon.png',width: 150,height: 150,fit: BoxFit.fill,),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: ()=>print("Flutter Egypt"),
      loaderColor: Colors.red
    ),
      routes: {
        '/map': (_) => MapScreen(),
        '/assistant': (_) => AssistantScreen(),
        '/tips': (_)=>Information(),
        '/sacnner': (_)=>QRViewExample(),
        '/notification': (_) => NotificationScreen()
      },
    );
  }
}
