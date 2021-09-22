import 'package:flutter/material.dart';

import 'package:gutenberg_blocks/gutenberg_blocks.dart';

class ExampleTitleBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Title Box'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            TitleBox(
              title: Text('Title'),
              borderColor: Colors.red,
            ),
            SizedBox(height: 16),
            TitleBox(
              title: Text('Title'),
              borderColor: Colors.red,
              heading: Text('heading', style: Theme.of(context).textTheme.headline5),
            ),
            SizedBox(height: 16),
            TitleBox(
              title: Text('Title'),
              borderColor: Colors.red,
              doubleBorder: true,
            ),
            SizedBox(height: 16),
            TitleBox(
              title: Text('Title'),
              borderColor: Colors.red,
              doubleBorder: true,
              heading: Text(
                'heading',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
