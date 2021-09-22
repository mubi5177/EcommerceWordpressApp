import 'package:flutter/material.dart';

import 'package:gutenberg_blocks/gutenberg_blocks.dart';

class ExampleSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Slider'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Text('no ui'),
      ),
    );
  }
}
