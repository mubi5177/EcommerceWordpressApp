import 'package:flutter/material.dart';

import 'package:gutenberg_blocks/gutenberg_blocks.dart';

class ExamplePostOfferBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Offer box'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            PostOfferBox(
              image: Text('image'),
              title: Text('title'),
              rating: Text('rating'),
              button: Text('button'),
            ),
            SizedBox(height: 60),
            PostOfferBox(
              image: Text('image'),
              title: Text('title'),
              button: Text('button'),
            ),
          ],
        ),
      ),
    );
  }
}
