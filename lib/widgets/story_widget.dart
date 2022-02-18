import 'package:flutter/material.dart';

import '../entities/story.dart';
import '../utils/insta_colors.dart';

class StoryWidget extends StatelessWidget {
  final Story story;

  const StoryWidget({required this.story, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.orange,
                  Colors.red,
                ],
              ),
            ),
            padding: const EdgeInsets.all(3),
            child: Container(
              height: 64.0,
              width: 64.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: InstaColors.background,
                  width: 2.0,
                ),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/${story.userAsset}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          story.name,
          style: const TextStyle(color: Colors.white, fontSize: 12),
        )
      ],
    );
  }
}
