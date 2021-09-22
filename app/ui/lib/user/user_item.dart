import 'package:flutter/material.dart';

abstract class UserItem extends StatefulWidget {
  final Color? color;
  final BorderRadius? borderRadius;
  final List<BoxShadow>? shadow;

  const UserItem({
    Key? key,
    this.color,
    this.borderRadius,
    this.shadow,
  }) : super(key: key);

  @override
  _UserItemState createState() => _UserItemState();

  @protected
  Widget buildLayout(BuildContext context);
}

class _UserItemState extends State<UserItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: widget.borderRadius,
        boxShadow: widget.shadow,
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: widget.buildLayout(context),
    );
  }
}
