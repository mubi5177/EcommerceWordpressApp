part of awesome_bottom_nav_bar;

enum BottomBarBadgeType { primary, error, success }

class BottomBarBadge extends StatelessWidget {
  final String label;
  final double size;
  final EdgeInsets padding;
  final BottomBarBadgeType? type;

  BottomBarBadge({
    Key? key,
    required this.label,
    this.size = 19,
    this.padding = const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
    this.type,
  }) : super(key: key);

  Color getColor(ThemeData theme) {
    switch (type) {
      case BottomBarBadgeType.error:
        return theme.errorColor;

      case BottomBarBadgeType.success:
        return Color(0xFF21BA45);

      case BottomBarBadgeType.primary:
        return theme.primaryColor;
      default:
        return Colors.black.withOpacity(0.5);
    }
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextTheme textTheme = theme.textTheme;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: size,
          constraints: BoxConstraints(minWidth: size),
          alignment: Alignment.center,
          padding: label.length > 1 ? padding : null,
          decoration: BoxDecoration(color: getColor(theme), borderRadius: BorderRadius.circular(size / 2)),
          child: Text(
            label,
            style: textTheme.overline!.copyWith(color: Colors.white, fontWeight: FontWeight.w500, letterSpacing: 0.2),
          ),
        )
      ],
    );
  }
}
