part of awesome_bottom_nav_bar;

class TabItem<T> {
  final String? title;

  final T icon;

  final T? activeIcon;

  final bool blend;

  final String? key;

  const TabItem({
    this.title = '',
    required this.icon,
    this.activeIcon,
    bool? isIconBlend,
    this.key,
  })  : assert(icon is IconData || icon is Widget, 'TabItem only support IconData and Widget'),
        blend = isIconBlend ?? (icon is IconData);
}
