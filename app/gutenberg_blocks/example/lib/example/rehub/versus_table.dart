import 'package:flutter/material.dart';

import 'package:gutenberg_blocks/gutenberg_blocks.dart';

class ExampleVersusTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Versus Table'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            VersusTable(
              title: Text('title'),
              subtitle: Text('subtitle'),
              buildItem: (int index, double maxWidth, TextAlign textAlign) {
                return Text('$index');
              },
              separator: Text('vs'),
            ),
            SizedBox(height: 50),
            VersusTable(
              title: Text('title'),
              subtitle: Text('subtitle'),
              buildItem: (int index, double maxWidth, TextAlign textAlign) {
                return Text('${index + 1}');
              },
              separator: Text('vs'),
              column: 3,
            )
          ],
        ),
      ),
    );
  }
}
