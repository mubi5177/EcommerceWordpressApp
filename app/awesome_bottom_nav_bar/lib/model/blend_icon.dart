
part of awesome_bottom_nav_bar;

/// Decorate the provided [Image] or [IconData].
class BlendImageIcon<T> extends StatelessWidget {
  /// Create icon widget
  const BlendImageIcon(this.icon, {Key? key, this.color, this.size})
      : assert(icon is Widget || icon is IconData, 'icon must be IconData or Widget'),
        super(key: key);

  /// Color used for Icon and gradient.
  final Color? color;

  /// Child icon.
  final T icon;

  /// Size of icon.
  final double? size;

  @override
  Widget build(BuildContext context) {
    var s = size ?? IconTheme.of(context).size;
    if (icon is Widget) {
      // flutter web do not support shader mask. (flutter v1.12.x)
      var showRawImage = kIsWeb || color == null;
      if (showRawImage) {
        return SizedBox(
          width: s,
          height: s,
          child: icon as Widget,
        );
      }
      return SizedBox(
        width: s,
        height: s,
        child: ShaderMask(
          shaderCallback: (Rect bounds) {
            return LinearGradient(colors: [color!, color!]).createShader(bounds);
          },
          blendMode: BlendMode.srcIn,
          child: icon as Widget,
        ),
      );
    }
    return Icon(icon as IconData, size: s, color: color);
  }
}
