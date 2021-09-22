import 'package:flutter/material.dart';
import 'brand_item.dart';

class BrandHorizontalItem extends BrandItem {
  final Widget? image;
  final Widget? name;
  final double width;
  final double? height;

  /// Padding item
  final EdgeInsetsGeometry paddingContent;

  /// Border Radius Item
  final BorderRadius? borderRadius;

  /// Border Item
  final Border? border;

  /// Border Radius Item
  final List<BoxShadow>? boxShadow;

  /// Color Card of item post
  final Color? color;

  /// Function click item
  final Function? onClick;

  const BrandHorizontalItem({
    Key? key,
    this.name,
    this.image,
    this.width = 300,
    this.height,
    this.paddingContent = const EdgeInsets.symmetric(horizontal: 16),
    this.onClick,
    this.border,
    this.borderRadius,
    this.boxShadow,
    this.color,
  }) : super(
          key: key,
          color: color,
          border: border,
          borderRadius: borderRadius,
          boxShadow: boxShadow,
        );

  @override
  Widget buildLayout(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: InkWell(
        onTap: () => onClick?.call(),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: paddingContent,
                child: name ?? Container(),
              ),
            ),
            image ?? Container(),
          ],
        ),
      ),
    );
  }
}
