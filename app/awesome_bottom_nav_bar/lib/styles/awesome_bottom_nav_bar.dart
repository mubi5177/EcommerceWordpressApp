part of awesome_bottom_nav_bar;

enum TabStyle {
  bottomdefault,

  fancy,

  salamon,

  divider,

  floating,
}

class AwesomeBottomNavBar extends StatefulWidget {
  final DelegateBuilder itemBuilder;

  final Function(int index)? onTap;

  final Color? backgroundColor;

  final int count;

  final double? height;

  final double? elevation;

  final Curve curve;

  final Duration? duration;

  final EdgeInsets? padding;

  final bool? disableText;

  final double? heightPadDivider;

  final double? sizeWidthDivider;

  final bool? salomon;

  final BorderRadius? borderRadius;

  final bool? hasActiveBg;

  final double? radius;

  final TabStyle? style;

  final Color? activeColor;

  final bool? dividerBottom;

  final BoxShadow? boxShadow;

  final double filterX;

  final double filterY;

  final double opacity;

  final double? padTop;

  final double? padBottom;

  final NotchedShape? shape;

  final double notchMargin;

  final String? activeKey;

  final int? indexKey;

  final BoxDecoration? boxDecorationFloating;

  final EdgeInsets? marginFloating;

  final EdgeInsets? paddingFloating;

  AwesomeBottomNavBar({
    Key? key,
    required List<TabItem> items,
    Function(int index)? onTap,
    Color? color,
    Color? activeColor,
    Color? backgroundColor,
    double? height,
    double? elevation,
    TabStyle? style,
    Curve? curve,
    Duration? duration,
    EdgeInsets? padding,
    bool? disableText,
    double? sizeHeightDivider,
    double? sizeWidthDivider,
    bool? salomon,
    BorderRadius? borderRadius,
    BorderRadius? radiusSalomon,
    Color? colorSalomon,
    double? radius,
    bool? hasActiveBg,
    bool? dividerBottom,
    int? indexCount,
    double? positionedLeft,
    double? positionedTop,
    double? positionedRight,
    double? positionedBottom,
    BoxShadow? boxShadow,
    double? filterX,
    double? filterY,
    double? opacity,
    String? countBage,
    double? padTop,
    double? pad,
    double? padBottom,
    NotchedShape? shape,
    double? notchMargin,
    String? activeKey,
    int? indexKey,
    BoxDecoration? boxDecorationFloating,
    EdgeInsets? marginFloating,
    EdgeInsets? paddingFloating,
  }) : this.builder(
          key: key,
          itemBuilder: supportedStyle(
            style ?? TabStyle.bottomdefault,
            items: items,
            color: color ?? Colors.white60,
            activeColor: activeColor ?? Colors.white,
            backgroundColor: backgroundColor ?? Colors.blue,
            curve: curve ?? Curves.easeInOut,
            sizeHeightDivider: sizeHeightDivider,
            sizeWidthDivider: sizeWidthDivider,
            hasActiveBg: hasActiveBg ?? false,
            radiusSalomon: radiusSalomon,
            colorSalomon: colorSalomon,
            radius: radius,
            pad: pad,
            indexCount: indexCount,
            disableText: disableText ?? false,
            positionedLeft: positionedLeft,
            positionedTop: positionedTop,
            positionedBottom: positionedBottom,
            positionedRight: positionedRight,
            countBage: countBage ?? '0',
          ),
          onTap: onTap,
          backgroundColor: backgroundColor,
          count: items.length,
          padding: padding,
          salomon: salomon,
          borderRadius: borderRadius,
          height: height,
          elevation: elevation,
          filterX: filterX ?? 0,
          filterY: filterY ?? 0,
          opacity: opacity ?? 1,
          duration: duration,
          padTop: padTop ?? 0,
          padBottom: padBottom,
          curve: curve ?? Curves.ease,
          boxShadow: boxShadow,
          activeColor: activeColor ?? Colors.white,
          shape: shape,
          dividerBottom: dividerBottom ?? false,
          notchMargin: notchMargin ?? 4.0,
          activeKey: activeKey,
          indexKey: indexKey,
          boxDecorationFloating: boxDecorationFloating,
          marginFloating: marginFloating,
          paddingFloating: paddingFloating,
        );
  const AwesomeBottomNavBar.builder({
    Key? key,
    required this.itemBuilder,
    required this.count,
    this.onTap,
    this.backgroundColor,
    this.activeColor,
    this.height,
    this.elevation,
    this.curve = Curves.easeInOut,
    this.style,
    this.padding,
    this.disableText = false,
    this.heightPadDivider,
    this.sizeWidthDivider,
    this.salomon = false,
    this.borderRadius,
    this.hasActiveBg,
    this.dividerBottom,
    this.duration,
    this.boxShadow,
    this.filterX = 5.0,
    this.filterY = 10.0,
    this.opacity = 0.8,
    this.padTop,
    this.padBottom,
    this.radius,
    this.shape,
    this.notchMargin = 4.0,
    this.activeKey,
    this.indexKey,
    this.boxDecorationFloating,
    this.marginFloating,
    this.paddingFloating,
  }) : super(key: key);

  @override
  AwesomeBottomNavBarState createState() => AwesomeBottomNavBarState();
}

class AwesomeBottomNavBarState extends State<AwesomeBottomNavBar> with TickerProviderStateMixin {
  late ValueListenable<ScaffoldGeometry> geometryListenable;
  static const double _defaultElevation = 8.0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    geometryListenable = Scaffold.geometryOf(context);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final additionalBottomPadding = math.max(MediaQuery.of(context).padding.bottom, 0.0);
    return _barContent(additionalBottomPadding);
  }

  Widget _barContent(double paddingBottom) {
    final BottomAppBarTheme babTheme = BottomAppBarTheme.of(context);
    final NotchedShape? notchedShape = widget.shape ?? babTheme.shape;
    final CustomClipper<Path> clipper = notchedShape != null
        ? _BottomAppBarClipper(
            geometry: geometryListenable,
            shape: notchedShape,
            notchMargin: widget.notchMargin,
          )
        : const ShapeBorderClipper(shape: RoundedRectangleBorder());
    final double elevation = widget.elevation ?? babTheme.elevation ?? _defaultElevation;
    final Color color = widget.backgroundColor ?? babTheme.color ?? Theme.of(context).bottomAppBarColor;
    final Color effectiveColor = ElevationOverlay.applyOverlay(context, color, elevation);
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: widget.filterX,
          sigmaY: widget.filterY,
        ),
        child: Opacity(
          opacity: widget.opacity,
          child: PhysicalShape(
            clipper: clipper,
            elevation: elevation,
            color: effectiveColor,
            child: Material(
              type: MaterialType.transparency,
              child: SafeArea(
                child: Container(
                  margin: widget.marginFloating,
                  padding: widget.paddingFloating,
                  decoration: widget.boxDecorationFloating,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (widget.dividerBottom == false &&
                          (widget.itemBuilder.runtimeType == BottomBarDivider || widget.style == TabStyle.divider)) ...[
                        Divider(
                          activeColor: widget.activeColor,
                          curves: widget.curve,
                          duration: widget.duration,
                          indexKey: widget.indexKey,
                        ),
                      ],
                      SizedBox(height: widget.padTop),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: List.generate(widget.count, (index) {
                          var active = widget.indexKey == index;
                          String activeKey = widget.activeKey ?? '';
                          return widget.salomon == true
                              ? GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  onTap: () {
                                    setState(() {
                                      _onTabClick(index);
                                    });
                                  },
                                  child: _newTab(index, active, activeKey),
                                )
                              : Flexible(
                                  child: GestureDetector(
                                    behavior: HitTestBehavior.opaque,
                                    onTap: () {
                                      setState(() {
                                        _onTabClick(index);
                                      });
                                    },
                                    child: _newTab(index, active, activeKey),
                                  ),
                                );
                        }),
                      ),
                      if (widget.dividerBottom == true &&
                          (widget.itemBuilder.runtimeType == BottomBarDivider || widget.style == TabStyle.divider)) ...[
                        SizedBox(height: widget.padTop),
                        Divider(
                            activeColor: widget.activeColor,
                            curves: widget.curve,
                            duration: widget.duration,
                            indexKey: widget.indexKey),
                      ],
                      SizedBox(height: widget.padBottom),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _newTab(int i, bool active, String activeKey) {
    final child = widget.itemBuilder.build(context, i, active, activeKey);
    return child;
  }

  void _onTabClick(int index) {
    widget.onTap?.call(index);
  }
}

class StyleProvider extends InheritedWidget {
  /// Style configuration
  final StyleHook style;
  StyleProvider({Key? key, required this.style, required Widget child}) : super(key: key, child: child);

  /// Get instance of style provider, can be null if you're not providing one.
  static StyleProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<StyleProvider>();
  }

  @override
  bool updateShouldNotify(StyleProvider oldWidget) {
    return style.activeIconMargin != oldWidget.style.activeIconMargin ||
        style.activeIconSize != oldWidget.style.activeIconSize ||
        style.iconSize != oldWidget.style.iconSize;
  }
}

class _BottomAppBarClipper extends CustomClipper<Path> {
  const _BottomAppBarClipper({
    required this.geometry,
    required this.shape,
    required this.notchMargin,
  }) : super(reclip: geometry);

  final ValueListenable<ScaffoldGeometry> geometry;
  final NotchedShape shape;
  final double notchMargin;

  @override
  Path getClip(Size size) {
    final Rect? button = geometry.value.floatingActionButtonArea?.translate(
      0.0,
      geometry.value.bottomNavigationBarTop! * -1.0,
    );
    return shape.getOuterPath(Offset.zero & size, button?.inflate(notchMargin));
  }

  @override
  bool shouldReclip(_BottomAppBarClipper oldClipper) {
    return oldClipper.geometry != geometry || oldClipper.shape != shape || oldClipper.notchMargin != notchMargin;
  }
}
