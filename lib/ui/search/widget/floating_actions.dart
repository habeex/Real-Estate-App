import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:realestateapp/ui/common/k_select_options.dart';

int selected = 1;

class FloatingActions extends StatelessWidget {
  const FloatingActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Animate(
          effects: const [
            FadeEffect(
              delay: Duration(seconds: 1),
              duration: Duration(seconds: 1),
            ),
            SlideEffect(
              duration: Duration(seconds: 1),
              begin: Offset(-1, 0), // Starts from the left
              end: Offset(0, 0), // Ends at the original position
            ),
          ],
          child: KSelectOptionsButton(
            menuItems: [
              OptionsMenu(
                'Cosy areas',
                Colors.grey,
                Iconsax.shield_tick_copy,
              ),
              OptionsMenu(
                'Price',
                Colors.orange,
                Iconsax.wallet_3_copy,
              ),
              OptionsMenu(
                'Infrastructure',
                Colors.grey,
                Iconsax.bag_copy,
              ),
              OptionsMenu(
                'Without any layer',
                Colors.grey,
                Iconsax.layer_copy,
              ),
            ],
            onChange: (value) {
              selected = value;
            },
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Animate(
              effects: const [
                FadeEffect(
                  delay: Duration(seconds: 1),
                  duration: Duration(seconds: 1),
                ),
                SlideEffect(
                  duration: Duration(seconds: 1),
                  begin: Offset(-1, 0), // Starts from the left
                  end: Offset(0, 0), // Ends at the original position
                ),
              ],
              child: GestureDetector(
                onTap: () {},
                child: const CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white54,
                  child: Icon(
                    Iconsax.play_copy,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Animate(
              effects: const [
                FadeEffect(
                  delay: Duration(seconds: 1),
                  duration: Duration(seconds: 1),
                ),
                SlideEffect(
                  duration: Duration(seconds: 1),
                  begin: Offset(1, 0), // Starts from the left
                  end: Offset(0, 0), // Ends at the original position
                ),
              ],
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white54,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Iconsax.textalign_left_copy,
                      size: 20,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      'List of variants',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
