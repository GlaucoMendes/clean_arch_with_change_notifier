import 'package:flutter/material.dart';

class TabIcon extends StatelessWidget {
  final IconData icon;
  const TabIcon({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Icon(
        icon,
        color: Theme.of(context).colorScheme.primary,
        size: 30,
      ),
    );
  }
}
