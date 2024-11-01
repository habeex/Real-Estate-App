import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class RentOffer extends StatelessWidget {
  const RentOffer({super.key, required this.offer});
  final double offer;

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: const [
        ScaleEffect(
          delay: Duration(microseconds: 900),
          duration: Duration(seconds: 1),
          curve: Curves.easeIn,
        ),
      ],
      child: Container(
        width: 160,
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white70,
          shape: BoxShape.rectangle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                'RENT',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: const Color(0xFFA5957E),
                ),
              ),
              const SizedBox(height: 18),
              TweenAnimationBuilder<double>(
                tween: Tween<double>(begin: 0, end: offer as dynamic),
                duration: const Duration(seconds: 1),
                builder: (_, value, __) {
                  return Text(
                    value.toInt().toString(),
                    style: GoogleFonts.poppins(
                      fontSize: 36,
                      fontWeight: FontWeight.w800,
                      color: const Color(0xFFA5957E),
                    ),
                  );
                },
              ),
              Text(
                'offers',
                style: GoogleFonts.poppins(
                  color: const Color(0xFFA5957E),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
