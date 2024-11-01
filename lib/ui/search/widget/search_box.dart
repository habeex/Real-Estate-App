import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 4,
          child: Animate(
            effects: [
              FadeEffect(delay: 800.ms, duration: 300.ms),
            ],
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Abuja Nigeria',
                isDense: true,
                filled: true,
                hintStyle: TextStyle(
                  color: Colors.grey.withOpacity(.6),
                ),
                fillColor: Colors.white,
                prefixIcon: const Icon(
                  Iconsax.search_normal_1_copy,
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1.5,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 1.5,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Animate(
            effects: [
              FadeEffect(delay: 1000.ms, duration: 300.ms),
            ],
            child: const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
              child: Icon(Iconsax.candle_2_copy),
            ),
          ),
        ),
      ],
    );
  }
}
