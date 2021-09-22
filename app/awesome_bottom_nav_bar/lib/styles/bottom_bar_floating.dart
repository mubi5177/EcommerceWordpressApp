part of awesome_bottom_nav_bar;

class BottomBarFloating extends InnerBuilder {
  BottomBarFloating({
    required List<TabItem> items,
    required Color activeColor,
    required Color color,
    bool? disableText,
    bool? hasActiveBg,
    int? indexCount,
    double? positionedLeft,
    double? positionedTop,
    double? positionedRight,
    double? positionedBottom,
    String? countBage,
    double? pad,
  }) : super(
          items: items,
          activeColor: activeColor,
          color: color,
          disableText: disableText,
          hasActiveBg: hasActiveBg,
          indexCount: indexCount,
          positionedLeft: positionedLeft,
          positionedTop: positionedTop,
          countBage: countBage,
          pad: pad,
        );

  @override
  Widget build(BuildContext context, int index, bool active, String activeKey) {
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
                  item.icon,
                  color: active ? activeColor : color,
                ),
                SizedBox(height: pad),
                if (disableText == false) Text(item.title ?? '', style: textStyle),
              ],
            ),
            if (index == indexCount)
              Positioned(
                left: positionedLeft,
                top: positionedTop,
                bottom: positionedBottom,
                right: positionedRight,
                child: Container(
                    margin: EdgeInsetsDirectional.only(bottom: 20, start: 23),
                    child: BottomBarBadge(
                      size: 18,
                      label: '$countBage',
                      type: BottomBarBadgeType.error,
                    )),
              )
          ],
        ),
      ),
    );
  }
}
