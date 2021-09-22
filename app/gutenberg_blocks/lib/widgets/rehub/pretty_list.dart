import 'package:flutter/material.dart';

class PrettyListItem extends StatelessWidget {
  final Widget title;
  final double pad;
  final Icon icon;

  PrettyListItem({
    Key? key,
    required this.title,
    this.pad = 24,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        SizedBox(width: pad),
        Expanded(child: title),
      ],
    );
  }
}
