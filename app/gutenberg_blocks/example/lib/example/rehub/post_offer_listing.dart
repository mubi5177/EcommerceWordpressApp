import 'package:flutter/material.dart';

import 'package:gutenberg_blocks/gutenberg_blocks.dart';

class ExamplePostOfferListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Post Offer Listing'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            PostOfferListingItem(
              image: Text('image'),
              name: Text('name'),
              color: Colors.white,
            ),
            SizedBox(height: 50),
            PostOfferListingItem(
              image: Text('image'),
              name: Text('name'),
              description: Text('desciption'),
              color: Colors.white,
            ),
            SizedBox(height: 50),
            PostOfferListingItem(
              image: Text('image'),
              name: Text('name'),
              description: Text('desciption'),
              width: 300,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
