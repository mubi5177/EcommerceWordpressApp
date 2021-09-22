part of awesome_bottom_nav_bar;

/// Factory method to return the [DelegateBuilder] for each [TabStyle].
DelegateBuilder supportedStyle(
  TabStyle style, {
  required List<TabItem> items,
  required Color color,
  required Color activeColor,
  required Color backgroundColor,
  required Curve curve,
  bool? disableText,
  double? sizeHeightDivider,
  double? sizeWidthDivider,
  double? borderDivider,
  bool? hasActiveBg,
  double? radius,
  BorderRadius? radiusSalomon,
  int? indexCount,
  Color? colorSalomon,
  double? positionedLeft,
  double? positionedTop,
  double? positionedRight,
  double? positionedBottom,
  String? countBage,
  double? pad,
}) {
  assert(items.isNotEmpty, 'items should not be empty');
  assert(
      ((style == TabStyle.bottomdefault || style == TabStyle.salamon) && items.length.isOdd) ||
          (style != TabStyle.bottomdefault && style != TabStyle.salamon),
      'item count should be an odd number when using fixed/fixedCircle');
  DelegateBuilder builder;
  switch (style) {
    case TabStyle.bottomdefault:
      builder = BottomBarDefault(
          items: items,
          activeColor: activeColor,
          color: color,
          disableText: disableText,
          indexCount: indexCount,
          positionedLeft: positionedLeft,
          positionedTop: positionedTop,
          positionedBottom: positionedBottom,
          positionedRight: positionedBottom,
          pad: pad,
          countBage: countBage);
      break;
    case TabStyle.divider:
      builder = BottomBarDivider(
          items: items,
          activeColor: activeColor,
          color: color,
          disableText: disableText,
          indexCount: indexCount,
          positionedLeft: positionedLeft,
          positionedTop: positionedTop,
          positionedBottom: positionedBottom,
          positionedRight: positionedBottom,
          pad: pad,
          countBage: countBage);
      break;
    case TabStyle.salamon:
      builder = BottomBarSalamon(
          items: items,
          activeColor: activeColor,
          color: color,
          curve: curve,
          radiusSalomon: radiusSalomon,
          colorSalomon: colorSalomon,
          indexCount: indexCount,
          positionedLeft: positionedLeft,
          positionedTop: positionedTop,
          positionedBottom: positionedBottom,
          positionedRight: positionedBottom,
          countBage: countBage);
      break;
    case TabStyle.fancy:
      builder = BottomBarFancy(
          items: items,
          activeColor: activeColor,
          color: color,
          disableText: disableText,
          sizeWidthDivider: sizeWidthDivider,
          sizeHeightDivider: sizeHeightDivider,
          radius: radius,
          indexCount: indexCount,
          positionedLeft: positionedLeft,
          positionedTop: positionedTop,
          positionedBottom: positionedBottom,
          positionedRight: positionedRight,
          pad: pad,
          countBage: countBage);
      break;
    case TabStyle.floating:
      builder = BottomBarFloating(
          items: items,
          activeColor: activeColor,
          color: color,
          disableText: disableText,
          indexCount: indexCount,
          positionedLeft: positionedLeft,
          positionedTop: positionedTop,
          positionedBottom: positionedBottom,
          positionedRight: positionedBottom,
          pad: pad,
          countBage: countBage);
      break;
    default:
      builder = BottomBarDefault(
          items: items,
          activeColor: activeColor,
          color: color,
          disableText: disableText,
          indexCount: indexCount,
          positionedLeft: positionedLeft,
          positionedTop: positionedTop,
          positionedBottom: positionedBottom,
          positionedRight: positionedBottom,
          pad: pad,
          countBage: countBage);
      break;
  }

  return builder;
}
