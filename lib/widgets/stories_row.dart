import 'package:flutter/material.dart';
import 'package:instagram_like/data/insta.dart';
import 'package:instagram_like/entities/story.dart';
import 'package:instagram_like/widgets/story_widget.dart';

class StoriesRow extends StatelessWidget {
  const StoriesRow({Key? key}) : super(key: key);

  List<Story> get stories => storiesData.map((e) => Story.fromJson(e)).toList();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 112.0,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        scrollDirection: Axis.horizontal,
        itemCount: stories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12.0),
        itemBuilder: (_, index) => StoryWidget(story: stories[index]),
      ),
    );
  }
}
