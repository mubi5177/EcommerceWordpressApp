import 'package:flutter/material.dart';

import 'package:gutenberg_blocks/gutenberg_blocks.dart';

class ExampleWoocommerceBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Example Woocommerce box'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            WoocommerceBoxProductItem(
              image: Text('image'),
              name: Text('name'),
              price: Text('price'),
              rating: Text('rating'),
              description: Text('desciption'),
              button: Text('button'),
              band: Text('band'),
              color: Color(0xFFf4f4f4),
            ),
            SizedBox(height: 50),
            WoocommerceBoxFiction(
              title: 'OS :',
              content: 'XBOX one, XBOX one X',
              styleTitle: theme.textTheme.subtitle1 ?? TextStyle(),
              styleContent: theme.textTheme.bodyText1 ?? TextStyle(),
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
