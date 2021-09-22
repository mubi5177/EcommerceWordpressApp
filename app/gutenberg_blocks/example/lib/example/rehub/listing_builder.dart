import 'package:flutter/material.dart';

import 'package:gutenberg_blocks/gutenberg_blocks.dart';

class ExampleListingBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Listing builder'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            ListingBuilderItem(
              image: Text('image'),
              title: Text('title'),
              price: Text('price'),
              score: Text('score'),
              content: Text('content'),
              button: Text('button'),
              disclaimer: Text('disclaimer'),
              background: Colors.white,
              colorDisclaimer: Color(0xFFf4f4f4),
            ),
            SizedBox(height: 50),
            ListingBuilderItem(
              image: Text('image'),
              title: Text('title'),
              price: Text('price'),
              score: Text('score'),
              content: Text('content'),
              button: Text('button'),
              background: Colors.white,
              colorDisclaimer: Color(0xFFf4f4f4),
              width: 300,
            ),
          ],
        ),
      ),
    );
  }
}
