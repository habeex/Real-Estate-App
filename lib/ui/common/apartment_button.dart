import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class ApartmentButton extends StatelessWidget {
  const ApartmentButton({super.key, required this.address, this.onTap});
  final String address;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: const [
        FadeEffect(duration: Duration(seconds: 1)),
        SlideEffect(
          duration: Duration(seconds: 1),
          begin: Offset(-1, 0), // Starts from the left
          end: Offset(0, 0), // Ends at the original position
        ),
      ],
      child: InkWell(
        onTap: onTap,
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 5,
          ),
          padding: const EdgeInsets.only(left: 8, right: 3, bottom: 2, top: 2),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Colors.white70,
                Color(0xFFB3A99F),
              ],
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox.shrink(),
              Flexible(
                child: Text(
                  address,
                  maxLines: 1,
                  style: GoogleFonts.poppins(),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 12,
                ),
              )
            ],
          ),
        ).animate(onPlay: (controller) => controller.repeat()).shimmer(
              duration: 3000.ms,
              color: Colors.white,
            ),
      ),
    );
  }
}
