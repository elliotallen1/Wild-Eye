import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapDisplay extends StatefulWidget {
  const MapDisplay({super.key});

  @override
  State<MapDisplay> createState() => _MapDisplayState();
}

class _MapDisplayState extends State<MapDisplay> {
  @override
  Widget build(BuildContext context) {
return FlutterMap(
    options: MapOptions(
      initialCenter: LatLng(51.509364, -0.128928), // Center the map over London
      initialZoom: 9.2,
    ),
    children: [
      TileLayer( // Display map tiles from any source
        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png', // OSMF's Tile Server
        userAgentPackageName: 'com.example.app',
        // And many more recommended properties!
      ),
      
    ],
  );
}
}