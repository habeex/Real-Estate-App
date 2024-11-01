import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class BuyOffer extends StatelessWidget {
  const BuyOffer({super.key, required this.offer});
  final double offer;

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
        width: 160,
        height: 160,
        decoration: const BoxDecoration(
          color: Colors.orangeAccent,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                'BUY',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Colors.white,
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
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  );
                },
              ),
              Text(
                'offers',
                style: GoogleFonts.poppins(
                  color: Colors.white,
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
