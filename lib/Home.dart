import 'package:flutter/material.dart';
import 'package:top10flutterwid/DetailScreens.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Key _hKey;
  @override
  Widget build(BuildContext context) {
    return listView4Tiles();
  }

  Widget listView4Tiles() {
    return Scrollbar(
      child: ListView(
        padding: EdgeInsets.only(left: 5.0, right: 5.0),
        shrinkWrap: true,
        // addSemanticIndexes: true,
        children: <Widget>[
          _customListTile(Colors.blue, Colors.blueAccent, "SafeArea"),
          _customListTile(Colors.deepOrange, Colors.deepOrangeAccent, "Wrap"),
          _customListTile(Colors.purple, Colors.purpleAccent, "RichText"),
          _customListTile(Colors.red, Colors.redAccent, "ClipRect"),
          _customListTile(Colors.brown, Colors.amberAccent, "MediaQuery"),
          _customListTile(Colors.green, Colors.greenAccent, "FutureBuilder"),
          _customListTile(Colors.teal, Colors.tealAccent, "Flexible"),
          _customListTile(Colors.blue, Colors.blueAccent, "SizedBox"),
          _customListTile(Colors.amber, Colors.amberAccent, "Hero"),
          _customListTile(Colors.red, Colors.blueAccent, "SpinkitLoaders")
        ],
      ),
    );
  }

  _customListTile(Color widgetColor, Color splashColor, String widgetName) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Card(
          semanticContainer: true,
          elevation: 5.0,
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          // clipBehavior: Clip.antiAlias,
          borderOnForeground: true,

          child: Container(
            // color: Colors.white,
            // margin:EdgeInsets.all(100.0),
            height: 60.0,
            width: 340,
            child: InkWell(
              splashColor: splashColor,
              // highlightColor: Colors.orange,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            (DetailScreen(widgetName, widgetColor))));
              },
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: 20.0),
                  GestureDetector(
                    onTap: () {
                      _navigateto(context, widgetName);
                    },
                    child: Hero(
                      key: _hKey,
                      tag: widgetName,
                      child: CircleAvatar(
                          child: Image.asset(
                        ('images/circle-cropped.png'),
                      )),
                    ),
                  ),
                  SizedBox(width: 40),
                  Center(
                    child: RichText(
                      text: TextSpan(
                          text: widgetName,
                          style: TextStyle(
                              color: widgetColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              fontFamily: 'Satisfy'),
                          children: [
                            TextSpan(
                                text: "    Widget",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16.0,
                                    fontFamily: 'SpicyRice'))
                          ]),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _navigateto(BuildContext context, String tag) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => (Scaffold(
                    body: GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Center(
                    child: Hero(
                      key: _hKey,
                      tag: tag,
                      child: Image.asset(
                        ('images/circle-cropped.png'),
                      ),
                    ),
                  ),
                )))));
  }
}
