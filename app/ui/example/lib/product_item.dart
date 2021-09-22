import 'package:flutter/material.dart';
import 'package:ui/ui.dart';

class ProductItemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    String image =
        'https://static.remove.bg/remove-bg-web/8be32deab801c5299982a503e82b025fee233bd0/assets/start-0e837dcc57769db2306d8d659f53555feb500b3c5d456879b9c843d1872e7baa.jpg';
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('Product Item'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 15,
              ),
              ProductCardVerticalItem(
                image: Image.network(
                  image,
                  width: 300,
                  height: 200,
                ),
                name: Text('title'),
                price: Text('price'),
                category: Text('category'),
                rating: Text('ratting'),
                addCard: Text('add card'),
                tagExtra: Text('extra'),
                wishlist: Text('wishlist'),
                onClick: () {},
                width: 300,
                color: Colors.greenAccent,
              ),
              SizedBox(height: 20),
              ProductCardHorizontalItem(
                image: Image.network(
                  image,
                  width: 300,
                  height: 200,
                ),
                name: Text('title'),
                category: Text('category'),
                tagExtra: Text('tag'),
                addCart: Text('add'),
                wishlist: Text('wishlist'),
                onClick: () {},
                width: 300,
              ),
              SizedBox(
                height: 15,
              ),
              ProductContainedItem(
                image: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    image,
                  ),
                ),
                name: Text('Name'),
                price: Text('Price'),
                tagExtra: Text(
                  'Tax Extra',
                  style: TextStyle(color: Colors.white),
                ),
                wishlist: Text('wishlist'),
                addCard: Text('Button add', style: TextStyle(color: Colors.white)),
                rating: Text('rating'),
                onClick: () => print('product'),
              ),
              SizedBox(
                height: 15,
              ),
              ProductHorizontalItem(
                image: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    image,
                    width: 70,
                    height: 102,
                    fit: BoxFit.cover,
                  ),
                ),
                name: Text('Name'),
                price: Text('Price'),
                tagExtra: Text('Tax Extra'),
                addCard: Text('Button add'),
                rating: Text('rating'),
                onClick: () => print('product'),
              ),
              SizedBox(
                height: 15,
              ),
              ProductCartItem(
                image: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    image,
                    width: 70,
                    height: 102,
                    fit: BoxFit.cover,
                  ),
                ),
                name: Text('Name'),
                price: Text('Price'),
                quantity: Text('quantity'),
                attribute: Text('attribute'),
                onClick: () => print('product'),
              ),
              ProductEmergeItem(
                image: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    image,
                    width: 160,
                    height: 190,
                    fit: BoxFit.cover,
                  ),
                ),
                name: Text('Name'),
                price: Text('Price'),
                category: Text('Category'),
                tagExtra: Text(
                  'Tax',
                  style: TextStyle(color: Colors.white),
                ),
                addCart: Container(
                  height: 34,
                  width: 34,
                  decoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                  alignment: Alignment.center,
                  child: Text('A'),
                ),
                rating: Text('rating'),
                wishlist: Text('W'),
                onClick: () => print('product'),
                width: 160,
              ),
              SizedBox(height: 20),
              Text('ProductVerticalItem'),
              SizedBox(height: 12),
              ProductVerticalItem(
                image: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    image,
                    width: 160,
                    height: 190,
                    fit: BoxFit.cover,
                  ),
                ),
                name: Text('Name'),
                price: Text('Price'),
                category: Text('Category'),
                tagExtra: Text(
                  'Tax',
                  style: TextStyle(color: Colors.white),
                ),
                addCard: Container(
                  height: 34,
                  width: 34,
                  decoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                  alignment: Alignment.center,
                  child: Text('A'),
                ),
                rating: Text('rating'),
                wishlist: Text('W'),
                onClick: () => print('product'),
                width: 160,
              ),
              SizedBox(height: 20),
              Text('ProductVerticalItem center'),
              SizedBox(height: 12),
              ProductVerticalItem(
                image: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    image,
                    width: 160,
                    height: 190,
                    fit: BoxFit.cover,
                  ),
                ),
                name: Text('Name'),
                price: Text('Price'),
                category: Text('Category'),
                tagExtra: Text(
                  'Tax',
                  style: TextStyle(color: Colors.white),
                ),
                addCard: Container(
                  height: 34,
                  width: 100,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: Text('A'),
                ),
                rating: Text('rating'),
                wishlist: Text('W'),
                onClick: () => print('product'),
                width: 160,
                type: ProductVerticalItemType.center,
              ),
            ],
          ),
        ));
  }
}
