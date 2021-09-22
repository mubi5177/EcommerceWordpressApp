import 'package:flutter/material.dart';

import 'package:gutenberg_blocks/gutenberg_blocks.dart';

class ExampleOfferListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Offer Listing'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            OfferListingItem(
              image: Text('image'),
              name: Text('name'),
              price: Text('price'),
              badge: Text('badge'),
              description: Text('description'),
              button: Text('button'),
              disclaimer: Container(
                color: Colors.green,
                child: Text('disclaimer'),
              ),
              color: Colors.white,
              disclaimerColor: Colors.pink,
            ),
            SizedBox(height: 50),
            OfferListingItem(
              image: Text('image'),
              name: Text('name'),
              description: Text('description'),
              button: Text('button'),
              disclaimer: Container(
                color: Colors.green,
                child: Text('disclaimer'),
              ),
              width: 300,
              color: Colors.white,
              disclaimerColor: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}
