part of awesome_bottom_nav_bar;

class BottomBarFancy extends InnerBuilder {
  BottomBarFancy({
    required List<TabItem> items,
    required Color activeColor,
    required Color color,
    bool? disableText,
    double? sizeHeightDivider,
    double? sizeWidthDivider,
    double? radius,
    int? indexCount,
    double? positionedLeft,
    double? positionedTop,
    double? positionedBottom,
    double? positionedRight,
    String? countBage,
    double? pad,
  }) : super(
          items: items,
          activeColor: activeColor,
          color: color,
          disableText: disableText,
          sizeHeightDivider: sizeHeightDivider,
          sizeWidthDivider: sizeWidthDivider,
          radius: radius,
          indexCount: indexCount,
          positionedLeft: positionedLeft,
          positionedTop: positionedTop,
          positionedBottom: positionedBottom,
          positionedRight: positionedRight,
          countBage: countBage,
          pad: pad,
        );

  @override
  Widget build(BuildContext context, int index, bool active,  String activeKey) {
    var item = items[index];
    var style = ofStyle(context);
    var textStyle = active ? style.textStyle(activeColor) : style.textStyle(color);
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.only(bottom: 2),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BlendImageIcon(
                  active ? item.activeIcon ?? item.icon : item.icon,
                  color: active ? activeColor : color,
                ),
                if (disableText == false) Text(item.title ?? '', style: textStyle),
                SizedBox(
                  height: pad,
                ),
                Container(
                  width: sizeWidthDivider ?? 5,
                  height: sizeHeightDivider ?? 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(radius ?? 5),
                    color: active ? activeColor : null,
                  ),
                ),
              ],
            ),
            if (index == indexCount)
              Positioned(
                left: positionedLeft,
                top: positionedTop,
                bottom: positionedBottom,
                right: positionedRight,
                child: Container(
                  margin: EdgeInsetsDirectional.only(bottom: 35, start: 23),
                  child: BottomBarBadge(
                    size: 18,
                    label: '$countBage',
                    type: BottomBarBadgeType.error,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
