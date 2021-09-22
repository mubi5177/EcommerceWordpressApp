import 'package:flutter/material.dart';

import 'package:gutenberg_blocks/gutenberg_blocks.dart';

class ExampleItinerary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Itinerary'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            ItineraryItem(
              colorBoxIcon: Colors.blue,
              icon: Icon(Icons.description, size: 16, color: Colors.white),
              title: Text('title'),
            ),
          ],
        ),
      ),
    );
  }
}
