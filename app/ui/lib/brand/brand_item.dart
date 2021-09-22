import 'package:flutter/material.dart';

abstract class BrandItem extends StatefulWidget {
  final Color? color;
  final BorderRadius? borderRadius;
  final Border? border;
  final List<BoxShadow>? boxShadow;

  const BrandItem({
    Key? key,
    this.borderRadius,
    this.border,
    this.boxShadow,
    this.color,
  }) : super(key: key);

  @override
  _BrandItemState createState() => _BrandItemState();

  @protected
  Widget buildLayout(BuildContext context);
}

class _BrandItemState extends State<BrandItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: widget.color ?? Theme.of(context).cardColor,
          border: widget.border,
          borderRadius: widget.borderRadius,
          boxShadow: widget.boxShadow),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: widget.buildLayout(context),
    );
  }
}
