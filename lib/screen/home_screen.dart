import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child:  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
         Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.centerLeft,
          height: 185.0,
          decoration: BoxDecoration(
            gradient:  LinearGradient(
                colors: [Color(0xfff9f9f9), Color(0xfff9f9f9)],
                begin: const FractionalOffset(0.5, 0.0),
                end: const FractionalOffset(0.0, 0.5),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp), /**/
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
               InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/map');
                },
                child:  Stack(
                  children: <Widget>[
                    Container(
                      margin:  EdgeInsets.only(left: 10.0),
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: 150.0,
                      decoration:  BoxDecoration(
                        //border:  Border.all(color: Colors.black38),
                        borderRadius:
                             BorderRadius.all(Radius.circular(10.0)),
                        gradient:  LinearGradient(
                            colors: [Colors.green[400], Colors.lightGreen],
                            begin: const FractionalOffset(0.5, 0.0),
                            end: const FractionalOffset(0.0, 0.5),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(
                              0.0,
                              13.0,
                            ),
                            blurRadius: 5.0,
                          ),
                        ],
                      ),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.map,size: 75,color: Colors.white,),
                          SizedBox(
                            height: 15.0,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:  EdgeInsets.only(
                          top: 130.0,
                          left: MediaQuery.of(context).size.width / 23.2),
                      width: MediaQuery.of(context).size.width / 2.7,
                      height: 30.0,
                      //color: Colors.red,
                      child:  Padding(
                        padding: EdgeInsets.all(3.0),
                        child:  Center(
                          child:  Text(
                            "Map",
                            maxLines: 1,
                            softWrap: false,
                            overflow: TextOverflow.fade,
                            textAlign: TextAlign.center,
                            style:  TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "Raleway",
                              fontSize: 14.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius:  BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0)),
                        gradient:  LinearGradient(
                            colors: [Color(0xffffffff), Color(0xffffffff)],
                            begin: const FractionalOffset(0.5, 0.0),
                            end: const FractionalOffset(0.0, 0.5),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(156, 39, 176, 0.30),
                            offset: Offset(3.0, 5.0),
                            blurRadius: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
               InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/assistant');
                },
                child:  Stack(
                  children: <Widget>[
                    Container(
                      margin:  EdgeInsets.only(left: 10.0),
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: 150.0,
                      decoration:  BoxDecoration(
                        //border:  Border.all(color: Colors.black38),
                        borderRadius:
                             BorderRadius.all(Radius.circular(10.0)),
                        gradient:  LinearGradient(
                            colors: [Colors.amber, Colors.orange],
                            begin: const FractionalOffset(0.5, 0.0),
                            end: const FractionalOffset(0.0, 0.5),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(
                              0.0,
                              13.0,
                            ),
                            blurRadius: 5.0,
                          ),
                        ],
                      ),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.bubble_chart,size: 75,color: Colors.white,),
                          SizedBox(
                            height: 15.0,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:  EdgeInsets.only(
                          top: 130.0,
                          left: MediaQuery.of(context).size.width / 23.2),
                      width: MediaQuery.of(context).size.width / 2.7,
                      height: 30.0,
                      //color: Colors.red,
                      child:  Padding(
                        padding: EdgeInsets.all(3.0),
                        child:  Center(
                          child:  Text(
                            "Assistant",
                            maxLines: 1,
                            softWrap: false,
                            overflow: TextOverflow.fade,
                            textAlign: TextAlign.center,
                            style:  TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "Raleway",
                              fontSize: 14.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius:  BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0)),
                        gradient:  LinearGradient(
                            colors: [Color(0xffffffff), Color(0xffffffff)],
                            begin: const FractionalOffset(0.5, 0.0),
                            end: const FractionalOffset(0.0, 0.5),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(156, 39, 176, 0.30),
                            offset: Offset(3.0, 5.0),
                            blurRadius: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),     
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.centerLeft,
          height: 185.0,
          decoration: BoxDecoration(
            gradient:  LinearGradient(
                colors: [Color(0xfff9f9f9), Color(0xfff9f9f9)],
                begin: const FractionalOffset(0.5, 0.0),
                end: const FractionalOffset(0.0, 0.5),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp), /**/
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
           InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/sacnner');
                },
                child:  Stack(
                  children: <Widget>[
                    Container(
                      margin:  EdgeInsets.only(left: 10.0),
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: 150.0,
                      decoration:  BoxDecoration(
                        //border:  Border.all(color: Colors.black38),
                        borderRadius:
                             BorderRadius.all(Radius.circular(10.0)),
                        gradient:  LinearGradient(
                            colors: [Colors.purple, Colors.pink],
                            begin: const FractionalOffset(0.5, 0.0),
                            end: const FractionalOffset(0.0, 0.5),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(
                              0.0,
                              13.0,
                            ),
                            blurRadius: 5.0,
                          ),
                        ],
                      ),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('assets/images/qr.jpg',width: 75,height: 75,),
                          SizedBox(
                            height: 15.0,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:  EdgeInsets.only(
                          top: 130.0,
                          left: MediaQuery.of(context).size.width / 23.2),
                      width: MediaQuery.of(context).size.width / 2.7,
                      height: 30.0,
                      //color: Colors.red,
                      child:  Padding(
                        padding: EdgeInsets.all(3.0),
                        child:  Center(
                          child:  Text(
                            "Bus Scan",
                            maxLines: 1,
                            softWrap: false,
                            overflow: TextOverflow.fade,
                            textAlign: TextAlign.center,
                            style:  TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "Raleway",
                              fontSize: 14.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius:  BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0)),
                        gradient:  LinearGradient(
                            colors: [Color(0xffffffff), Color(0xffffffff)],
                            begin: const FractionalOffset(0.5, 0.0),
                            end: const FractionalOffset(0.0, 0.5),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(156, 39, 176, 0.30),
                            offset: Offset(3.0, 5.0),
                            blurRadius: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
               InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/notification');
                },
                child:  Stack(
                  children: <Widget>[
                    Container(
                      margin:  EdgeInsets.only(left: 10.0),
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: 150.0,
                      decoration:  BoxDecoration(
                        //border:  Border.all(color: Colors.black38),
                        borderRadius:
                             BorderRadius.all(Radius.circular(10.0)),
                        gradient:  LinearGradient(
                            colors: [Colors.orange, Colors.red],
                            begin: const FractionalOffset(0.5, 0.0),
                            end: const FractionalOffset(0.0, 0.5),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(
                              0.0,
                              13.0,
                            ),
                            blurRadius: 5.0,
                          ),
                        ],
                      ),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('assets/images/game.png',width: 75,height: 75,),
                          SizedBox(
                            height: 15.0,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:  EdgeInsets.only(
                          top: 130.0,
                          left: MediaQuery.of(context).size.width / 23.2),
                      width: MediaQuery.of(context).size.width / 2.7,
                      height: 30.0,
                      //color: Colors.red,
                      child:  Padding(
                        padding: EdgeInsets.all(3.0),
                        child:  Center(
                          child:  Text(
                            "Game",
                            maxLines: 1,
                            softWrap: false,
                            overflow: TextOverflow.fade,
                            textAlign: TextAlign.center,
                            style:  TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "Raleway",
                              fontSize: 14.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius:  BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0)),
                        gradient:  LinearGradient(
                            colors: [Color(0xffffffff), Color(0xffffffff)],
                            begin: const FractionalOffset(0.5, 0.0),
                            end: const FractionalOffset(0.0, 0.5),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(156, 39, 176, 0.30),
                            offset: Offset(3.0, 5.0),
                            blurRadius: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
        ],
          ),
        ),
         Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.centerLeft,
          height: 185.0,
          decoration: BoxDecoration(
            gradient:  LinearGradient(
                colors: [Color(0xfff9f9f9), Color(0xfff9f9f9)],
                begin: const FractionalOffset(0.5, 0.0),
                end: const FractionalOffset(0.0, 0.5),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp), /**/
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
               InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/tips');
                },
                child:  Stack(
                  children: <Widget>[
                    Container(
                      margin:  EdgeInsets.only(left: 10.0),
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: 150.0,
                      decoration:  BoxDecoration(
                        //border:  Border.all(color: Colors.black38),
                        borderRadius:
                             BorderRadius.all(Radius.circular(10.0)),
                        gradient:  LinearGradient(
                            colors: [
                              Color(0xff52baf8),
                              Color(0xff45dcddd),
                            ],
                            begin: const FractionalOffset(0.5, 0.0),
                            end: const FractionalOffset(0.0, 0.5),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(
                              0.0,
                              13.0,
                            ),
                            blurRadius: 5.0,
                          ),
                        ],
                      ),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Hero(
                            tag: 'mathematics_literacy',
                            child: Icon(Icons.view_list,size: 75,color: Colors.white,),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:  EdgeInsets.only(
                          top: 130.0,
                          left: MediaQuery.of(context).size.width / 23.2),
                      width: MediaQuery.of(context).size.width / 2.7,
                      height: 30.0,
                      //color: Colors.red,
                      child:  Padding(
                        padding: EdgeInsets.all(5.0),
                        child:  Center(
                          child:  Text(
                            "Information & Tips",
                            maxLines: 1,
                            softWrap: false,
                            overflow: TextOverflow.fade,
                            textAlign: TextAlign.center,
                            style:  TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius:  BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0)),
                        gradient:  LinearGradient(
                            colors: [Color(0xffffffff), Color(0xffffffff)],
                            begin: const FractionalOffset(0.5, 0.0),
                            end: const FractionalOffset(0.0, 0.5),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff52baf8).withOpacity(0.4),
                            offset: Offset(3.0, 5.0),
                            blurRadius: 15.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
               InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/notification');
                },
                child:  Stack(
                  children: <Widget>[
                    Container(
                      margin:  EdgeInsets.only(left: 10.0),
                      width: MediaQuery.of(context).size.width / 2.5,
                      height: 150.0,
                      decoration:  BoxDecoration(
                        //border:  Border.all(color: Colors.black38),
                        borderRadius:
                             BorderRadius.all(Radius.circular(10.0)),
                        gradient:  LinearGradient(
                            colors: [Colors.indigoAccent, Colors.indigo],
                            begin: const FractionalOffset(0.5, 0.0),
                            end: const FractionalOffset(0.0, 0.5),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(
                              0.0,
                              13.0,
                            ),
                            blurRadius: 5.0,
                          ),
                        ],
                      ),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Hero(
                            tag: 'mathematics',
                            child: Icon(Icons.notifications,size: 75,color: Colors.white,),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:  EdgeInsets.only(
                          top: 130.0,
                          left: MediaQuery.of(context).size.width / 23.2),
                      width: MediaQuery.of(context).size.width / 2.7,
                      height: 30.0,
                      //color: Colors.red,
                      child:  Padding(
                        padding: EdgeInsets.all(3.0),
                        child:  Center(
                          child:  Text(
                            "Notifications",
                            maxLines: 1,
                            softWrap: false,
                            overflow: TextOverflow.fade,
                            textAlign: TextAlign.center,
                            style:  TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius:  BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0)),
                        gradient:  LinearGradient(
                            colors: [Color(0xffffffff), Color(0xffffffff)],
                            begin: const FractionalOffset(0.5, 0.0),
                            end: const FractionalOffset(0.0, 0.5),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(33, 150, 243, 0.30),
                            offset: Offset(3.0, 5.0),
                            blurRadius: 20.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
      ),
    );
  }
}



