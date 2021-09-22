import 'package:flutter/material.dart';

import 'package:gutenberg_blocks/gutenberg_blocks.dart';

class ExampleHowTo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example How to'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            HowTo(
              title: Text(
                'bbb',
                style: TextStyle(fontSize: 22),
              ),
              minHeightTitle: 30,
              description: Text('description'),
              countStep: 3,
              buildItemStep: (int index) {
                return StepItem(
                  visit: Text('visit'),
                  title: Text('title'),
                  content: Text('Content'),
                );
              },
              borderColor: Colors.red,
            ),
            SizedBox(height: 50),
            HowTo(
              title: Text(
                'bbb',
                style: TextStyle(fontSize: 22),
              ),
              minHeightTitle: 30,
              countStep: 3,
              buildItemStep: (int index) {
                return Text('Step ${index + 1}');
              },
              borderColor: Colors.red,
            ),
            SizedBox(height: 50),
            HowTo(
              description: Text('description'),
              borderColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
