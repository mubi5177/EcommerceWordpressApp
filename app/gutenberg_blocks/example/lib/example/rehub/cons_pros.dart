import 'package:flutter/material.dart';

import 'package:gutenberg_blocks/gutenberg_blocks.dart';

class ExampleConsPros extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Cons pros'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            ConsPros(
              positive: Text('positive'),
              negative: ViewIconPros(
                icon: Icons.check,
                title: Text('negative'),
                items: ['a', 'e'],
                colorIcon: Colors.green,
                styleItem: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
