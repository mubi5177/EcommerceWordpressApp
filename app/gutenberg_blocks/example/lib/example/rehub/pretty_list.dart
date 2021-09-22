import 'package:flutter/material.dart';

import 'package:gutenberg_blocks/gutenberg_blocks.dart';

class ExamplePrettyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Pretty list'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            PrettyListItem(
              title: Text('aaaa'),
              icon: Icon(Icons.store),
            ),
            SizedBox(height: 12),
            PrettyListItem(
              title: Text('bbbb'),
              icon: Icon(Icons.store),
            ),
          ],
        ),
      ),
    );
  }
}
