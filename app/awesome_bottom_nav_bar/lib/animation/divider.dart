part of awesome_bottom_nav_bar;

class Divider extends StatelessWidget {
  final int? currentIndex;
  final Color? activeColor;
  final Curve? curves;
  final Duration? duration;
  final int? indexKey;
  Divider({this.currentIndex, this.activeColor, this.curves, this.duration, this.indexKey});
  @override
  Widget build(BuildContext context) {
    print(indexKey);
    return Row(
      children: <Widget>[
        AnimatedContainer(
          duration: duration ?? Duration(milliseconds: 300),
          curve: curves ?? Curves.ease,
          color: Colors.transparent,
          width: indexKey == 0
              ? MediaQuery.of(context).size.width * 0.0
              : MediaQuery.of(context).size.width * 0.2 * indexKey!,
          height: 4.0,
        ),
        Flexible(
          child: AnimatedContainer(
            duration: duration ?? Duration(milliseconds: 300),
            curve: curves ?? Curves.ease,
            width: MediaQuery.of(context).size.width * 0.2,
            height: 4.0,
            alignment: Alignment.center,
            color: activeColor,
          ),
        )
      ],
    );
  }
}
