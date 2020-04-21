import 'package:flutter/material.dart';
import 'package:top10flutterwid/Aboutme.dart';
import 'package:top10flutterwid/main.dart';
// import 'package:top10flutterwid/main.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BackHome extends StatefulWidget {
  var themefunc;
  BackHome({this.themefunc});
  @override
  _BackHomeState createState() => _BackHomeState(themefunc);
}

class _BackHomeState extends State<BackHome> {
  var themefunc;
  _BackHomeState(this.themefunc);
  // static var textcolor = Colors.black;
  // TextStyle _textstyle = TextStyle(
  //   color: textcolor,
  //   fontSize: 16.0,
  // );

  @override
  Widget build(BuildContext context) {
    return _backlayer();
  }

  _discriptionSection() {
    return Container(
      child: Column(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 30.0,
            ),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              child: Container(
                height: 50.0,
                width: 60.0,
                color: Colors.black26,
                child: FlutterLogo(
                  size: 25,
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
                  style: TextStyle(fontSize: 16),
                ),
                Text(""),
                Text(
                  "V 1.0",
                  style: TextStyle(fontSize: 16),
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
              ' side by side source code view.',
              style:TextStyle(fontSize: 16.0) ),
          ],
        ),
        SizedBox(height: 8.0),
        Text(
          "Developed by UzairLeo.",
          // style: _textstyle,
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
              value: switchValue,
              onChanged: (bool value) {
                // darkThemeButton(value);
                setState(() {
                  switchValue = value;
                  // textcolor=Colors.white;
                  // (switchValue==true)?textcolor=Colors.white:textcolor=Colors.black;
                  themefunc(switchValue);
                });
              },
              activeColor: Colors.black45,
              activeTrackColor: Colors.black45,
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
