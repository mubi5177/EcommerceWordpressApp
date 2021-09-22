import 'package:flutter/material.dart';

class PostOfferListingItem extends StatelessWidget {
  final Widget image;
  final Widget name;
  final Widget? description;
  final double? width;
  final Color color;
  final List<BoxShadow>? boxShadow;
  final EdgeInsetsGeometry padding;
  final double? radius;

  PostOfferListingItem({
    Key? key,
    required this.image,
    required this.name,
    this.description,
    this.width,
    required this.color,
    this.boxShadow,
    this.padding = const EdgeInsets.all(16),
    this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        double maxWidth = constraints.maxWidth;
        double widthScreen = MediaQuery.of(context).size.width;
        double widthDefault = maxWidth == double.infinity ? widthScreen : maxWidth;
        double widthItem = width ?? widthDefault;

        return Container(
          width: widthItem,
          padding: padding,
          decoration: BoxDecoration(
            color: color,
            boxShadow: boxShadow ??
                [
                  BoxShadow(
                    color: const Color.fromRGBO(0, 0, 0, 0.08),
                    offset: Offset(0, 4),
                    blurRadius: 24,
                    spreadRadius: 0,
                  )
                ],
            borderRadius: BorderRadius.circular(radius ?? 8),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              image,
              SizedBox(height: 16),
              name,
              if (description is Widget) SizedBox(height: 8),
              description ?? SizedBox(),
            ],
          ),
        );
      },
    );
  }
}
