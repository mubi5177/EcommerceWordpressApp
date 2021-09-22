import 'package:flutter/material.dart';

import 'package:gutenberg_blocks/gutenberg_blocks.dart';

class ExampleReviewHeading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Review heading'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            ReviewHeading(
              title: Text('title'),
              subtitle: Text('subtitle'),
              positionNumber: Text('01.'),
              image: Text('image'),
            ),
          ],
        ),
      ),
    );
  }
}
