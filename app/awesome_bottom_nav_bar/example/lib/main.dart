import 'package:example/screen_1.dart';
import 'package:flutter/material.dart';
import 'package:awesome_bottom_nav_bar/awesome_bottom_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _currentIndex = 0;
  List<TabItem> _navBarsItems() {
    return [
      TabItem(
        icon: Icon(Icons.home),
        title: "Home",
        isIconBlend: true,
      ),
      TabItem(
        icon: Icon(Icons.search_sharp),
        title: "Shop",
        isIconBlend: true,
      ),
      TabItem(
        icon: Icon(Icons.favorite_border),
        title: ("Wishlist"),
        isIconBlend: true,
      ),
      TabItem(
        icon: Icon(Icons.shopping_cart_outlined),
        title: ("Cart"),
        isIconBlend: true,
      ),
      TabItem(
        icon: Icon(Icons.account_box),
        title: ("profile"),
        isIconBlend: true,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      bottomNavigationBar: AwesomeBottomNavBar(
        onTap: (i) => setState(() => _currentIndex = i),
        items: _navBarsItems(),
        style: TabStyle.bottomdefault,
        activeColor: Colors.white,
        indexKey: _currentIndex,
        color: Colors.red,
        marginFloating: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        paddingFloating: EdgeInsets.symmetric(vertical: 20),
        boxDecorationFloating: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue,
        ),
      ),
      body: _navBarsItems().elementAt(_currentIndex).title == 'Home' ? Screen1() : null,
    );
  }
}
