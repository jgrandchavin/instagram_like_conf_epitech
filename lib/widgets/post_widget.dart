import 'package:flutter/material.dart';
import 'package:instagram_like/widgets/icon_widget.dart';

import '../entities/post.dart';

class PostWidget extends StatefulWidget {
  final Post post;
  const PostWidget({Key? key, required this.post}) : super(key: key);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> with TickerProviderStateMixin {
  bool isLiked = false;
  late AnimationController animationController;

  void like() {
    if (!isLiked) animationController.forward();
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Post header
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Container(
                height: 32.0,
                width: 32.0,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: ClipOval(
                  child: Image.asset(
                    'assets/${widget.post.userAsset}',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 16.0),
              Text(
                widget.post.id,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
        ),
        //  Post image
        GestureDetector(
          onDoubleTap: () => like(),
          child: SizedBox(
            height: 300,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'assets/${widget.post.asset}',
                  fit: BoxFit.cover,
                ),
                AnimatedBuilder(
                    animation: animationController,
                    child: const Center(
                      child: IconWidget(name: 'heart_full', height: 64.0),
                    ),
                    builder: (_, child) {
                      return Transform.scale(
                        scale: animationController.value,
                        child: child,
                      );
                    })
              ],
            ),
          ),
        ),
        //  Post footer
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              isLiked
                  ? const IconWidget(name: 'heart_full', color: Colors.red)
                  : const IconWidget(name: 'heart'),
              const SizedBox(width: 16.0),
              const IconWidget(name: 'send'),
              const Spacer(),
              const IconWidget(name: 'bookmark'),
            ],
          ),
        ),
        //  Likes
        Padding(
          padding: const EdgeInsets.all(12.0).copyWith(top: 4.0),
          child: Text(
            '${widget.post.likes} J\'aime',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0)
              .copyWith(bottom: 8.0),
          child: Text(
            widget.post.description,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        )
      ],
    );
  }
}
