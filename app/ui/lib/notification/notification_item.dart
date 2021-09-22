import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  final Function onTap;
  final Text title;
  final Text? date;
  final Text? time;
  final Widget? leading;
  final Widget? trailing;
  NotificationItem({
    required this.title,
    required this.onTap,
    this.date,
    this.leading,
    this.trailing,
    this.time,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => onTap(),
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Theme.of(context).primaryColor.withOpacity(0.1),
                ),
                child: leading,
              ),
              SizedBox(width: 16),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      date ?? Container(),
                      SizedBox(width: 8),
                      time ?? Container(),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  title,
                ],
              )),
              trailing ?? Container(),
            ],
          ),
        ));
  }
}
