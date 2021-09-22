import 'package:flutter/material.dart';

import 'package:gutenberg_blocks/gutenberg_blocks.dart';

class ExampleReviewBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Review Box'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            ReviewBox(
              score: Text('score'),
              title: Text('title'),
              description: Text('description'),
              criteria: Text('criteria'),
              consPros: Text('cons pros'),
              separator: Divider(height: 1, thickness: 1),
            ),
            Container(height: 60),
            ReviewBox(
              score: Text('score'),
              title: Text('title'),
              description: Text('description'),
              criteria: Text('criteria'),
              separator: Divider(height: 1, thickness: 1),
            ),
            Container(height: 60),
            ReviewBox(
              score: Text('score'),
              title: Text('title'),
              description: Text('description'),
              separator: Divider(height: 1, thickness: 1),
            ),
          ],
        ),
      ),
    );
  }
}
