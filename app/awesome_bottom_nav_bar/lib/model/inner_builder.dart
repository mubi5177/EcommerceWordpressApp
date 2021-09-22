part of awesome_bottom_nav_bar;

abstract class InnerBuilder extends DelegateBuilder {
  /// List of [TabItem] stands for tabs.
  final List<TabItem> items;

  /// Color used when tab is active.
  final Color activeColor;

  final bool? disableText;

  final double? sizeHeightDivider;

  final double? sizeWidthDivider;

  final bool? hasActiveBg;

  final int? indexCount;

  final  double? positionedLeft;
  
  final  double? positionedTop;

  final  double? positionedRight;
  
  final  double? positionedBottom;

  final String? countBage;

  final double? pad;

  final bool? dividerTop;
  final  bool? dividerBottom;

  /// Color used for tab.
  final Color color;

  final double? radius;

  final  int? currentIndex;
  final Curve? curves;
  final Duration? duration;

  /// Style hook to override the internal tab style
  StyleHook? _style;

  /// Create style builder.
  InnerBuilder(
      {required this.items,
      required this.activeColor,
      required this.color,
      this.disableText = false,
      this.sizeHeightDivider,
      this.sizeWidthDivider,
      this.hasActiveBg,
      this.indexCount,
      this.positionedLeft,
      this.positionedTop,
      this.positionedBottom,
      this.positionedRight,
      this.countBage,
      this.pad = 4,
      this.radius,
      this.dividerBottom,
      this.dividerTop,
      this.curves,
      this.currentIndex,
      this.duration,
    });

  /// Get style config
  StyleHook ofStyle(BuildContext context) {
    return StyleProvider.of(context)?.style ?? (_style ??= InternalStyle());
  }

  /// Return true if title text exists
  bool hasNoText(TabItem item) {
    return item.title == null || item.title!.isEmpty;
  }
}
