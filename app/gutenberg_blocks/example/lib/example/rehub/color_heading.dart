import 'package:flutter/material.dart';

import 'package:gutenberg_blocks/gutenberg_blocks.dart';

class ExampleColorHeading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Color Heading'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            ColorHeading(
              title: Text('Title'),
              subtitle: Text('subtitle'),
              background: Colors.deepOrangeAccent,
              padding: EdgeInsets.all(16),
            ),
            SizedBox(height: 16),
            ColorHeading(
              title: Text('Title'),
              background: Colors.deepOrangeAccent,
            ),
          ],
        ),
      ),
    );
  }
}
