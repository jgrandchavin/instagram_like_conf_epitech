import 'package:flutter/material.dart';
import 'package:instagram_like/data/insta.dart';
import 'package:instagram_like/entities/post.dart';
import 'package:instagram_like/utils/insta_colors.dart';
import 'package:instagram_like/widgets/header_widget.dart';
import 'package:instagram_like/widgets/navigation_widget.dart';
import 'package:instagram_like/widgets/stories_row.dart';

import '../widgets/post_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  List<Post> get posts => postsData.map((e) => Post.fromJson(e)).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: InstaColors.background,
      body: SafeArea(
        child: Column(
          children: [
            const HeaderWidget(),
            Expanded(
              child: ListView.separated(
                itemCount: posts.length,
                separatorBuilder: (_, __) => const SizedBox(height: 8.0),
                itemBuilder: (_, index) => Column(
                  children: [
                    if (index == 0) const StoriesRow(),
                    PostWidget(post: posts[index]),
                  ],
                ),
              ),
            ),
            const NavigationWidget(),
          ],
        ),
      ),
    );
  }
}
