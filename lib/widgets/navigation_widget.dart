import 'package:flutter/material.dart';
import 'package:instagram_like/widgets/icon_widget.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          IconWidget(name: 'home'),
          IconWidget(name: 'search'),
          IconWidget(name: 'real'),
          IconWidget(name: 'shop'),
          IconWidget(name: 'profile'),
        ],
      ),
    );
  }
}
