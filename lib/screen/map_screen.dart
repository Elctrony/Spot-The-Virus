import 'package:covid_19/widget/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatelessWidget {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(30.0286838, 30.9859768);
  List<Circle> _circles = [];
  List<Marker> _markes = [];

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _addCircles() {
    _markes.add(
      Marker(
          markerId: MarkerId('0'),
          position: LatLng(30.0308493, 30.9812388),
          infoWindow: InfoWindow(title: 'hospital A')),
    );
    _circles.add(
      Circle(
          circleId: CircleId('0'),
          center: LatLng(30.0308493, 30.9812388),
          radius: 100,
          fillColor: Colors.red[200],
          strokeColor: Colors.red,
          strokeWidth: 5),
    );
    _markes.add(
      Marker(
          markerId: MarkerId('1'),
          position: LatLng(30.0349345, 30.9873629),
          infoWindow: InfoWindow(title: 'hospital B')),
    );
    _circles.add(
      Circle(
          circleId: CircleId('1'),
          center: LatLng(30.0349345, 30.9873629),
          radius: 100,
          fillColor: Colors.red[200],
          strokeColor: Colors.red,
          strokeWidth: 5),
    );
    _markes.add(
      Marker(
          markerId: MarkerId('2'),
          position: LatLng(30.0320852, 31.00322),
          infoWindow: InfoWindow(title: 'hospital C')),
    );
    _circles.add(
      Circle(
          circleId: CircleId('2'),
          center: LatLng(30.0320852, 31.00322),
          radius: 100,
          fillColor: Colors.red[200],
          strokeColor: Colors.red,
          strokeWidth: 5),
    );
  }

  @override
  Widget build(BuildContext context) {
    _addCircles();
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        backgroundColor: Colors.green,
      ),
      body: Stack(
        children: <Widget>[
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 13.0,
            ),
            markers: _markes.toSet(),
            circles: _circles.toSet(),
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
          ),
          Positioned(
            bottom: 60,
            left: 5,
              child: Row(
            children: <Widget>[
              Icon(Icons.blur_circular, color: Colors.red,size: 40,),
              SizedBox(
                width: 6,
              ),
              Text('quarantine Area',style: TextStyle(fontSize: 20),)
            ],
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('Report'),
        icon: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class Choice {
  final title;
  final icon;
  final value;

  Choice({this.title, this.icon, this.value});
}
