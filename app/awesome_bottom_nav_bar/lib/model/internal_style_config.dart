part of awesome_bottom_nav_bar;

const double ACTION_LAYOUT_SIZE = 60;

const double ACTION_INNER_BUTTON_SIZE = 40;

class InternalStyle extends StyleHook {
  @override
  double? get iconSize {
    // use null will fallback to size of IconTheme
    return null;
  }

  @override
  double get activeIconMargin {
    return (ACTION_LAYOUT_SIZE - ACTION_INNER_BUTTON_SIZE) / 4;
  }

  @override
  double get activeIconSize {
    return ACTION_INNER_BUTTON_SIZE;
  }

  @override
  TextStyle textStyle(Color color) {
    return TextStyle(color: color);
  }
}
