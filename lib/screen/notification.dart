import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
          onDoubleTap: () async{
            Navigator.of(context).pop();
          },
          child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'assets/images/notification.png',
                fit: BoxFit.fill,
              ))),
    );
  }
}
