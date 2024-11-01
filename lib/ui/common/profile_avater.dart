import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key, required this.url});
  final String url;

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: const [
        ScaleEffect(
          duration: Duration(seconds: 1),
          curve: Curves.easeIn,
        ),
      ],
      child: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.orangeAccent,
        child: ClipOval(
          child: Image.network(
            width: 80,
            height: 80,
            url,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
