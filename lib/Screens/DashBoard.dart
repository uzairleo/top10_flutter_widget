import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:top10flutterwid/Widgets/Aboutme.dart';
import 'package:top10flutterwid/Screens/BackHome.dart';
import 'package:top10flutterwid/Screens/Home.dart';

class DashBoard extends StatefulWidget {
  var themefunc;
  DashBoard({this.themefunc});
  @override
  _DashBoardState createState() => _DashBoardState(themefunc);
}

class _DashBoardState extends State<DashBoard> {
  var themefunc;
  _DashBoardState(this.themefunc);
  var _title = Text(
    "Top 10 Widgets",
    style: TextStyle(
        fontSize: 30.0, fontFamily: 'Satisfy', fontWeight: FontWeight.w600),
  );
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      actions: <Widget>[
        IconButton(
          icon: Icon(FontAwesomeIcons.meh),
          onPressed: () {
            aboutme(context);
          },
        )
      ],
      frontLayerBorderRadius: BorderRadius.only(
          topLeft: Radius.circular(18.0), topRight: Radius.circular(18.0)),
      headerHeight: 50.0,

      iconPosition: BackdropIconPosition.leading,
      title: _title,
      frontLayer: Home(),
      backLayer: BackHome(themefunc: this.themefunc),
    );
  }
}
