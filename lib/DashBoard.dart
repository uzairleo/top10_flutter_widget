import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
import 'package:top10flutterwid/BackHome.dart';
import 'package:top10flutterwid/Home.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  var _title = RichText(
    text: TextSpan(
        text: "TOP10",
        style: TextStyle(
          color: Colors.teal,
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: "Flutter",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: "Widgets",
            style: TextStyle(
              color: Colors.purple,
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
            ),
          )
        ]),
  );
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      // actions: <Widget>[
      // IconButton(icon: Icon(Icons.ac_unit),onPressed: ()=>{},)
      // ],
      frontLayerBorderRadius: BorderRadius.only(
          topLeft: Radius.circular(18.0), topRight: Radius.circular(18.0)),
      headerHeight: 50.0,

      iconPosition: BackdropIconPosition.leading,
      title: _title,

      frontLayer: Home(),
      backLayer:BackHome(),
    );
  }
}
