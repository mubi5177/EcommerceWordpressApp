import 'package:flutter/material.dart';

abstract class VendorItem extends StatefulWidget {
  final Color? color;
  final Border? border;
  final BorderRadius? borderRadius;
  final List<BoxShadow>? boxShadow;

  const VendorItem({
    Key? key,
    this.border,
    this.borderRadius,
    this.boxShadow,
    this.color,
  }) : super(key: key);

  @override
  _VendorItemState createState() => _VendorItemState();

  @protected
  Widget buildLayout(BuildContext context);
}

class _VendorItemState extends State<VendorItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.color,
        border: widget.border,
        borderRadius: widget.borderRadius,
        boxShadow: widget.boxShadow,
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: widget.buildLayout(context),
    );
  }
}
