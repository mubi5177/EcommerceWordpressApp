part of awesome_bottom_nav_bar;

abstract class DelegateBuilder {
  Widget build(BuildContext context, int index, bool active, String activeKey);

  bool fixed() {
    return false;
  }
}

abstract class StyleHook {

  double? get iconSize;

  double get activeIconMargin;

  double get activeIconSize;

  TextStyle textStyle(Color color);

  bool get hideEmptyLabel {
    return true;
  }

  double get layoutSize {
    return activeIconMargin * 4 + activeIconSize;
  }
}
