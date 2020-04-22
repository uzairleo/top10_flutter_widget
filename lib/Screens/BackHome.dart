import 'package:flutter/material.dart';
import 'package:top10flutterwid/Widgets/Aboutme.dart';
import 'package:top10flutterwid/main.dart';

var textColor = Colors.white;

class BackHome extends StatefulWidget {
  var themefunc;
  BackHome({this.themefunc});
  @override
  _BackHomeState createState() => _BackHomeState(themefunc);
}

class _BackHomeState extends State<BackHome> {
  var themefunc;
  _BackHomeState(this.themefunc);

  @override
  Widget build(BuildContext context) {
    return _backlayer();
  }

  _discriptionSection() {
    return Container(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 50.0,
            ),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              child: Container(
                height: 70.0,
                width: 80.0,
                color: Colors.black26,
                child: Center(
                  child: FlutterLogo(
                    size: 55,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 25.0,
            ),
            Column(
              children: <Widget>[
                Text(
                  "Top10Widgets",
                  style: TextStyle(
                      color: textColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(""),
                Text(
                  "V 1.0",
                  style: TextStyle(
                      fontSize: 16,
                      color: textColor,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
        SizedBox(
          height: 15.0,
        ),
        Row(
          children: <Widget>[
            SizedBox(width: 10.0),
            Text(
              'An app showcasing flutter top10 widgets with\n'
              'side by side source code view.',
              style: TextStyle(fontSize: 16.0, color: textColor),
            ),
          ],
        ),
        SizedBox(height: 8.0),
        Text(
          "Developed by UzairLeo.",
          style: ThemeData().textTheme.caption.apply(color: textColor),
        ),
      ]),
    );
  }

  Widget _backlayer() {
    return Center(
      child: Container(
        //  color: Colors.orangeAccent,
        child: Column(children: <Widget>[
          _discriptionSection(),
          Divider(
            thickness: 2.0,
          ),
          ListTile(
            title: Text("Dark mode "),
            leading: Icon(Icons.wallpaper),
            subtitle: Text("Change theme "),
            // onTap: (){},
            trailing: Switch(
              inactiveTrackColor: Colors.white70,
              focusColor: Colors.blueGrey,
              activeTrackColor: Colors.white,
              value: switchValue,
              onChanged: (bool value) {
                setState(() {
                  switchValue = value;
                  themefunc(switchValue);
                });
              },
              activeColor: Colors.black45,
              inactiveThumbColor: Colors.white54,
            ),
          ),
          Divider(
            thickness: 2.0,
          ),
          ListTile(
            leading: Icon(Icons.web),
            title: Text("Visit my Website"),
            subtitle: Text("uzairleo.blogspot.com"),
            onTap: () {
              urlLauncher('http://uzairleo.blogspot.com');
            },
          ),
          Divider(
            thickness: 2.0,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("About me"),
            subtitle: Text("Rate my app on play store "),
            onTap: () {
              aboutme(context);
            },
          ),
          Divider(
            thickness: 2.0,
          )
        ]),
      ),
    );
  }
}
