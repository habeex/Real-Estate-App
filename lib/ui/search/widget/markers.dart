import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class MarkerWidget extends StatelessWidget {
  const MarkerWidget({super.key, required this.distance});
  final double distance;

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: const [
        ScaleEffect(
          delay: Duration(microseconds: 800),
          duration: Duration(seconds: 1),
          curve: Curves.easeIn,
        ),
      ],
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 8,
        ),
        decoration: const BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Text(
          '$distance meter',
          style: GoogleFonts.poppins(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class MarkerIcon extends StatelessWidget {
  const MarkerIcon({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: const [
        FadeEffect(
          delay: Duration(microseconds: 800),
          duration: Duration(seconds: 1),
          curve: Curves.easeIn,
        ),
      ],
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 8,
        ),
        decoration: const BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: const Icon(
          Iconsax.building_4_copy,
          color: Colors.white,
        ),
      ),
    );
  }
}
