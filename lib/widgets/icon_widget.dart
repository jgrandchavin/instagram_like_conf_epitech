import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final String name;
  final double height;
  final Color color;

  const IconWidget({
    required this.name,
    this.height = 24.0,
    this.color = Colors.white,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/$name.png',
      height: height,
      color: color,
    );
  }
}
