import 'package:flutter/material.dart';

/// Rehub
import 'example/rehub/info_box.dart';
import 'example/rehub/title_box.dart';
import 'example/rehub/double_heading.dart';
import 'example/rehub/offer_box.dart';
import 'example/rehub/post_offer_box.dart';
import 'example/rehub/review_box.dart';
import 'example/rehub/cons_pros.dart';
import 'example/rehub/accordion.dart';
import 'example/rehub/post_offer_listing.dart';
import 'example/rehub/offer_listing.dart';
import 'example/rehub/woocommerce_list.dart';
import 'example/rehub/versus_table.dart';
import 'example/rehub/woocommerce_box.dart';
import 'example/rehub/itinerary.dart';
import 'example/rehub/slider.dart';
import 'example/rehub/pretty_list.dart';
import 'example/rehub/promo_box.dart';
import 'example/rehub/review_heading.dart';
import 'example/rehub/color_heading.dart';
import 'example/rehub/comparison_table.dart';
import 'example/rehub/woocommerce_query.dart';
import 'example/rehub/how_to.dart';
import 'example/rehub/listing_builder.dart';

/// core
import 'example/core/audio.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => MyHomePage(title: 'Home'),

        // Post Item
        '/rehub_info_box': (context) => ExampleInfoBox(),
        '/rehub_title_box': (context) => ExampleTitleBox(),
        '/rehub_double_heading': (context) => ExampleDoubleHeading(),
        '/rehub_offer_box': (context) => ExampleOfferBox(),
        '/rehub_post_offer_box': (context) => ExamplePostOfferBox(),
        '/rehub_review_box': (context) => ExampleReviewBox(),
        '/rehub_cons_pros': (context) => ExampleConsPros(),
        '/rehub_accordion': (context) => ExampleAccordion(),
        '/rehub_post_offer_listing': (context) => ExamplePostOfferListing(),
        '/rehub_offer_listing': (context) => ExampleOfferListing(),
        '/rehub_woocommerce_list': (context) => ExampleWoocommerceList(),
        '/rehub_versus_table': (context) => ExampleVersusTable(),
        '/rehub_woocommerce_box': (context) => ExampleWoocommerceBox(),
        '/rehub_itinerary': (context) => ExampleItinerary(),
        '/rehub_slider': (context) => ExampleSlider(),
        '/rehub_pretty_list': (context) => ExamplePrettyList(),
        '/rehub_promo_box': (context) => ExamplePromoBox(),
        '/rehub_review_heading': (context) => ExampleReviewHeading(),
        '/rehub_color_heading': (context) => ExampleColorHeading(),
        '/rehub_comparison_table': (context) => ExampleComparisonTable(),
        '/rehub_woocommerce_query': (context) => ExampleWoocommerceQuery(),
        '/rehub_how_to': (context) => ExampleHowTo(),
        '/rehub_listing_builder': (context) => ExampleListingBuilder(),

        // Core
        '/core_audio': (context) => ExampleAudio(),
      },
      initialRoute: '/',
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Text('Rehub', style: Theme.of(context).textTheme.headline3),
            Text('Core', style: Theme.of(context).textTheme.headline3),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[buildRehub(context), buildCore(context)],
      ),
    );
  }
}

Widget buildRehub(BuildContext context) {
  return SingleChildScrollView(
    // Center is a layout widget. It takes a single child and positions it
    // in the middle of the parent.
    padding: EdgeInsets.all(24),
    child: Column(
      children: [
        ListTile(
          title: Text('Info Box'),
          trailing: Icon(Icons.chevron_right),
          onTap: () => Navigator.of(context).pushNamed('/rehub_info_box'),
        ),
        Divider(thickness: 1, height: 1),
        ListTile(
          title: Text('Title Box'),
          trailing: Icon(Icons.chevron_right),
          onTap: () => Navigator.of(context).pushNamed('/rehub_title_box'),
        ),
        Divider(thickness: 1, height: 1),
        ListTile(
          title: Text('Double heading'),
          trailing: Icon(Icons.chevron_right),
          onTap: () => Navigator.of(context).pushNamed('/rehub_double_heading'),
        ),
        Divider(thickness: 1, height: 1),
        ListTile(
          title: Text('Offer box'),
          trailing: Icon(Icons.chevron_right),
          onTap: () => Navigator.of(context).pushNamed('/rehub_offer_box'),
        ),
        Divider(thickness: 1, height: 1),
        ListTile(
          title: Text('Post offer box'),
          trailing: Icon(Icons.chevron_right),
          onTap: () => Navigator.of(context).pushNamed('/rehub_post_offer_box'),
        ),
        Divider(thickness: 1, height: 1),
        ListTile(
          title: Text('Review box'),
          trailing: Icon(Icons.chevron_right),
          onTap: () => Navigator.of(context).pushNamed('/rehub_review_box'),
        ),
        Divider(thickness: 1, height: 1),
        ListTile(
          title: Text('Cons Pros'),
          trailing: Icon(Icons.chevron_right),
          onTap: () => Navigator.of(context).pushNamed('/rehub_cons_pros'),
        ),
        Divider(thickness: 1, height: 1),
        ListTile(
          title: Text('Accordion'),
          trailing: Icon(Icons.chevron_right),
          onTap: () => Navigator.of(context).pushNamed('/rehub_accordion'),
        ),
        Divider(thickness: 1, height: 1),
        ListTile(
          title: Text('Post offer listing'),
          trailing: Icon(Icons.chevron_right),
          onTap: () => Navigator.of(context).pushNamed('/rehub_post_offer_listing'),
        ),
        Divider(thickness: 1, height: 1),
        ListTile(
          title: Text('Offer listing'),
          trailing: Icon(Icons.chevron_right),
          onTap: () => Navigator.of(context).pushNamed('/rehub_offer_listing'),
        ),
        Divider(thickness: 1, height: 1),
        ListTile(
          title: Text('Woocommerce list'),
          trailing: Icon(Icons.chevron_right),
          onTap: () => Navigator.of(context).pushNamed('/rehub_woocommerce_list'),
        ),
        Divider(thickness: 1, height: 1),
        ListTile(
          title: Text('Versus table'),
          trailing: Icon(Icons.chevron_right),
          onTap: () => Navigator.of(context).pushNamed('/rehub_versus_table'),
        ),
        Divider(thickness: 1, height: 1),
        ListTile(
          title: Text('Woocommerce box'),
          trailing: Icon(Icons.chevron_right),
          onTap: () => Navigator.of(context).pushNamed('/rehub_woocommerce_box'),
        ),
        Divider(thickness: 1, height: 1),
        ListTile(
          title: Text('Itinerary'),
          trailing: Icon(Icons.chevron_right),
          onTap: () => Navigator.of(context).pushNamed('/rehub_itinerary'),
        ),
        Divider(thickness: 1, height: 1),
        ListTile(
          title: Text('Slider'),
          onTap: () => Navigator.of(context).pushNamed('/rehub_slider'),
        ),
        Divider(thickness: 1, height: 1),
        ListTile(
          title: Text('Pretty list'),
          trailing: Icon(Icons.chevron_right),
          onTap: () => Navigator.of(context).pushNamed('/rehub_pretty_list'),
        ),
        Divider(thickness: 1, height: 1),
        ListTile(
          title: Text('Promo box'),
          trailing: Icon(Icons.chevron_right),
          onTap: () => Navigator.of(context).pushNamed('/rehub_promo_box'),
        ),
        Divider(thickness: 1, height: 1),
        ListTile(
          title: Text('Review heading'),
          trailing: Icon(Icons.chevron_right),
          onTap: () => Navigator.of(context).pushNamed('/rehub_review_heading'),
        ),
        Divider(thickness: 1, height: 1),
        ListTile(
          title: Text('Color heading'),
          trailing: Icon(Icons.chevron_right),
          onTap: () => Navigator.of(context).pushNamed('/rehub_color_heading'),
        ),
        Divider(thickness: 1, height: 1),
        ListTile(
          title: Text('Comparison table'),
          trailing: Icon(Icons.chevron_right),
          onTap: () => Navigator.of(context).pushNamed('/rehub_comparison_table'),
        ),
        Divider(thickness: 1, height: 1),
        ListTile(
          title: Text('Woocommerce query'),
          trailing: Icon(Icons.chevron_right),
          onTap: () => Navigator.of(context).pushNamed('/rehub_woocommerce_query'),
        ),
        Divider(thickness: 1, height: 1),
        ListTile(
          title: Text('How to'),
          trailing: Icon(Icons.chevron_right),
          onTap: () => Navigator.of(context).pushNamed('/rehub_how_to'),
        ),
        Divider(thickness: 1, height: 1),
        ListTile(
          title: Text('Listing builder'),
          trailing: Icon(Icons.chevron_right),
          onTap: () => Navigator.of(context).pushNamed('/rehub_listing_builder'),
        ),
        Divider(thickness: 1, height: 1),
      ],
    ),
  );
}

Widget buildCore(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        ListTile(
          title: Text('Audio'),
          trailing: Icon(Icons.chevron_right),
          onTap: () => Navigator.of(context).pushNamed('/core_audio'),
        ),
      ],
    ),
  );
}
