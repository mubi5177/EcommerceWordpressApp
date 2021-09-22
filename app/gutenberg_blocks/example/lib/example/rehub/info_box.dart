import 'package:flutter/material.dart';

import 'package:gutenberg_blocks/gutenberg_blocks.dart';

class ExampleInfoBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color color = Color(0xFFF0FFDE);
    Widget icon = Icon(Icons.link, size: 22, color: Color(0xFF21BA45));
    dynamic title = (TextAlign? textAlign) {
      return Text(
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s',
        textAlign: textAlign ?? TextAlign.start,
      );
    };
    Widget date = Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(color: Color(0xFF5BC0DE), borderRadius: BorderRadius.circular(29)),
      child: Text('Date : 24/6/2021', style: TextStyle(color: Colors.white)),
    );
    return Scaffold(
      appBar: AppBar(title: Text('Example Info Box')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            InfoBox(
              icon: icon,
              background: color,
              title: title(TextAlign.start),
              date: date,
            ),
            SizedBox(height: 16),
            InfoBox(
              icon: icon,
              background: color,
              title: title(TextAlign.center),
              date: date,
              align: InfoBoxAlign.center,
            ),
            SizedBox(height: 16),
            InfoBox(
              icon: icon,
              background: color,
              title: title(TextAlign.end),
              date: date,
              align: InfoBoxAlign.right,
            ),
            SizedBox(height: 16),
            InfoBox(
              icon: icon,
              background: color,
              title: title(TextAlign.justify),
              date: date,
              align: InfoBoxAlign.justify,
            ),
            SizedBox(height: 16),
            InfoBox(
              icon: icon,
              background: color,
              title: title(TextAlign.start),
            ),
            SizedBox(height: 16),
            InfoBox(
              icon: icon,
              background: color,
              title: title(TextAlign.center),
              align: InfoBoxAlign.center,
            ),
            SizedBox(height: 16),
            InfoBox(
              icon: icon,
              background: color,
              title: title(TextAlign.end),
              align: InfoBoxAlign.right,
            ),
            SizedBox(height: 16),
            InfoBox(
              icon: icon,
              background: color,
              title: title(TextAlign.justify),
              align: InfoBoxAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
