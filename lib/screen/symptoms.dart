import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  const Information({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.looks_one)),
              Tab(icon: Icon(Icons.looks_two)),
            ],
          ),
          title: Text('Informations'),
        ),
        body: TabBarView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              child: Image.asset('assets/images/symptoms.png'),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              child: Image.asset('assets/images/prec.png'),
            )
          ],
        ),
      ),
    );
  }
}
