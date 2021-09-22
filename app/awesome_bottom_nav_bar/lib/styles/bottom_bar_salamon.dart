part of awesome_bottom_nav_bar;

class BottomBarSalamon extends InnerBuilder {
  final Curve curve;

  final Duration duration;

  final BorderRadius? radiusSalomon;

  final EdgeInsets itemPadding;

  final Color? colorSalomon;

  final int? indexCount;

  final double? positionedLeft;
  final double? positionedTop;
  final double? positionedBottom;
  final double? positionedRight;
  final String? countBage;

  BottomBarSalamon(
      {required List<TabItem> items,
      required Color activeColor,
      required Color color,
      this.curve = Curves.easeOutQuint,
      this.duration = const Duration(milliseconds: 500),
      this.radiusSalomon,
      this.colorSalomon,
      this.itemPadding = const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      this.countBage,
      this.positionedBottom,
      this.positionedLeft,
      this.positionedRight,
      this.positionedTop,
      this.indexCount})
      : super(
          items: items,
          activeColor: activeColor,
          color: color,
        );

  @override
  Widget build(BuildContext context, int index, bool active, String activeKey) {
    final _selectedColor = activeColor;

    final _unselectedColor = color;
    var item = items[index];
    var style = ofStyle(context);
    var textStyle = (activeKey == item.key) || active ? style.textStyle(activeColor) : style.textStyle(color);
    return TweenAnimationBuilder<double>(
      tween: Tween(
        end: (activeKey == item.key) || active ? 1.0 : 0.0,
      ),
      curve: curve,
      duration: duration,
      builder: (context, t, _) {
        return Material(
          color: (activeKey == item.key) || active ? colorSalomon : Colors.transparent,
          borderRadius: radiusSalomon,
          child: Padding(
            padding: itemPadding - EdgeInsets.only(right: itemPadding.right * t),
            child: Row(
              children: [
                BlendImageIcon(
                  item.icon,
                  color: Color.lerp(_unselectedColor, _selectedColor, t),
                ),
                ClipRect(
                  child: SizedBox(
                    height: 20,
                    child: Align(
                      alignment: Alignment(-0.2, 0.0),
                      widthFactor: t,
                      child: Padding(
                        padding: EdgeInsets.only(left: itemPadding.right / 2, right: itemPadding.right),
                        child: DefaultTextStyle(
                          style: TextStyle(
                            color: Color.lerp(_selectedColor.withOpacity(0.0), _selectedColor, t),
                            fontWeight: FontWeight.w600,
                          ),
                          child: Text(item.title ?? '', style: textStyle),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
