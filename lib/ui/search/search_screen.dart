import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:realestateapp/ui/search/widget/floating_actions.dart';
import 'package:realestateapp/ui/search/widget/markers.dart';
import 'package:realestateapp/ui/search/widget/search_box.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with SingleTickerProviderStateMixin {
  final LatLng centerLocation = const LatLng(59.9343, 30.3351);
  final Random random = Random();
  final Distance distanceCalculator = const Distance();
  late AnimationController _animationController;
  late List<LatLng> positions = generateMarkersPosition();

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )
      ..addListener(() {
        // Check if the animation has completed and update the state
        if (_animationController.isCompleted) {
          setState(() {});
        }
      })
      ..forward(); // Start the animation
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  List<LatLng> generateMarkersPosition() {
    return List.generate(10, (index) {
      double offsetLat = (random.nextDouble() - 0.5) * 0.02;
      double offsetLng = (random.nextDouble() - 0.5) * 0.02;
      LatLng markerPosition = LatLng(centerLocation.latitude + offsetLat,
          centerLocation.longitude + offsetLng);
      return markerPosition;
    });
  }

  List<Marker> generateMarkers() {
    return List.generate(positions.length, (index) {
      LatLng markerPosition = positions[index];
      double distance = distanceCalculator.as(
        LengthUnit.Meter,
        centerLocation,
        markerPosition,
      );

      return Marker(
        point: markerPosition,
        width: _animationController.isCompleted ? 40 : 90, // Dynamic width
        height: _animationController.isCompleted ? 45 : 30, // Dynamic height
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return _animationController.isCompleted
                ? const MarkerIcon()
                : MarkerWidget(distance: distance);
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        FlutterMap(
          options: MapOptions(
            initialCenter: centerLocation,
            initialZoom: 14.5,
            backgroundColor: Colors.black,
          ),
          children: [
            TileLayer(
              urlTemplate:
                  'https://{s}.basemaps.cartocdn.com/dark_all/{z}/{x}/{y}.png', // OSMF's Tile Server
              userAgentPackageName: 'com.example',
            ),
            MarkerLayer(
              markers: generateMarkers(),
            ),
          ],
        ),
        const Positioned(
          top: 16,
          left: 16,
          right: 16,
          child: SafeArea(
            child: SearchBox(),
          ),
        ),
        const Positioned(
          bottom: 104,
          left: 16,
          right: 16,
          child: FloatingActions(),
        )
      ],
    );
  }
}
