import 'package:flutter/material.dart';

import 'package:gutenberg_blocks/gutenberg_blocks.dart';

class ExampleWoocommerceQuery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Woocommerce query'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            WoocommerceQueryItem(
              image: Text('image'),
              name: Text('name'),
              category: Text('category'),
              rating: Text('rating'),
              price: Text('price'),
              button: Text('button'),
              color: Colors.white,
            ),
            SizedBox(height: 50),
            WoocommerceQueryItem(
              image: Text('image'),
              name: Text('name'),
              category: Text('category'),
              rating: Text('rating'),
              price: Text('price'),
              button: Text('button'),
              color: Colors.white,
              width: 300,
            ),
          ],
        ),
      ),
    );
  }
}
