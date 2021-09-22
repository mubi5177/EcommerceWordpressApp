import 'package:awesome_bottom_nav_bar/awesome_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
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
    return SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(height: 40),
        AwesomeBottomNavBar(
            onTap: (i) => setState(() => _currentIndex = i),
            items: _navBarsItems(),
            style: TabStyle.bottomdefault,
            backgroundColor: Colors.black,
            activeColor: Colors.red,
            color: Colors.grey,
            positionedLeft: 20,
            indexCount: 0,
            countBage: '100',
            indexKey: _currentIndex,
            disableText: false,
            hasActiveBg: true),
        SizedBox(height: 40),
        AwesomeBottomNavBar(
            onTap: (i) => setState(() => _currentIndex = i),
            items: _navBarsItems(),
            style: TabStyle.bottomdefault,
            backgroundColor: Colors.blue.withOpacity(0.1),
            activeColor: Colors.red,
            color: Colors.grey,
            disableText: false,
            indexKey: _currentIndex,
            hasActiveBg: true),
        SizedBox(height: 40),
        AwesomeBottomNavBar(
          onTap: (i) => setState(() => _currentIndex = i),
          items: _navBarsItems(),
          style: TabStyle.bottomdefault,
          backgroundColor: Colors.blue.withOpacity(0.3),
          activeColor: Colors.white,
          color: Colors.grey,
          indexKey: _currentIndex,
          borderRadius: BorderRadius.circular(30),
        ),
        SizedBox(height: 40),
        AwesomeBottomNavBar(
          onTap: (i) => setState(() => _currentIndex = i),
          items: _navBarsItems(),
          style: TabStyle.bottomdefault,
          backgroundColor: Colors.blue.withOpacity(0.1),
          activeColor: Colors.red.withOpacity(0.9),
          color: Colors.grey,
          disableText: false,
          indexKey: _currentIndex,
          indexCount: 0,
        ),
        SizedBox(height: 40),
        AwesomeBottomNavBar(
          onTap: (i) => setState(() => _currentIndex = i),
          items: _navBarsItems(),
          style: TabStyle.fancy,
          backgroundColor: Colors.blue.withOpacity(0.1),
          activeColor: Colors.red.withOpacity(0.9),
          indexKey: _currentIndex,
          color: Colors.grey,
          disableText: true,
        ),
        SizedBox(height: 40),
        AwesomeBottomNavBar(
          onTap: (i) => setState(() => _currentIndex = i),
          items: _navBarsItems(),
          style: TabStyle.fancy,
          disableText: false,
          sizeHeightDivider: 5,
          sizeWidthDivider: 5,
          indexKey: _currentIndex,
          radius: 5,
          backgroundColor: Colors.blue.withOpacity(0.1),
          activeColor: Colors.red.withOpacity(0.9),
          color: Colors.grey,
          padding: EdgeInsets.only(top: 10),
          indexCount: 0,
        ),
        SizedBox(height: 40),
        AwesomeBottomNavBar(
          onTap: (i) => setState(() => _currentIndex = i),
          items: _navBarsItems(),
          style: TabStyle.salamon,
          radiusSalomon: BorderRadius.circular(30),
          backgroundColor: Colors.blue.withOpacity(0.1),
          activeColor: Colors.white,
          colorSalomon: Colors.blue,
          indexKey: _currentIndex,
          color: Colors.grey,
          padding: EdgeInsets.only(top: 10),
          salomon: true,
        ),
        SizedBox(height: 40),
        AwesomeBottomNavBar(
          onTap: (i) => setState(() => _currentIndex = i),
          items: _navBarsItems(),
          style: TabStyle.divider,
          backgroundColor: Colors.black,
          activeColor: Colors.red,
          color: Colors.grey,
          indexKey: _currentIndex,
          hasActiveBg: true,
          indexCount: 0,
          positionedTop: 40,
        ),
        SizedBox(height: 40),
        AwesomeBottomNavBar.builder(
          itemBuilder: Builder(),
          count: 5,
          onTap: (i) => setState(() => _currentIndex = i),
          height: 83,
          style: TabStyle.bottomdefault,
          backgroundColor: Colors.blue.withOpacity(0.1),
          activeColor: Colors.red.withOpacity(0.9),
          disableText: false,
        ),
        SizedBox(height: 40),
        AwesomeBottomNavBar(
          backgroundColor: Colors.grey,
          height: 80,
          color: Colors.yellow,
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.map, title: 'Discovery'),
            TabItem(icon: Icons.add, title: 'Add'),
            TabItem(icon: Icons.message, title: 'Message'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
          style: TabStyle.bottomdefault,
          disableText: false,
        ),
        SizedBox(height: 40),
      ],
    ));
  }
}

class Builder extends DelegateBuilder {
  @override
  Widget build(BuildContext context, int index, bool active, String activekey) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [Text('Home'), Icon(Icons.home)],
          )
        ],
      ),
    );
  }
}
