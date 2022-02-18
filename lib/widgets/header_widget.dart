import 'package:flutter/material.dart';

import 'icon_widget.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      child: Row(
        children: [
          Image.asset('assets/full_logo.png', height: 40.0),
          const Spacer(),
          const IconWidget(name: 'more'),
          const SizedBox(width: 16.0),
          const IconWidget(name: 'heart'),
          const SizedBox(width: 16.0),
          const IconWidget(name: 'send'),
        ],
      ),
    );
  }
}
