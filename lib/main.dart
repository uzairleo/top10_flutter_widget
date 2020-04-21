import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:top10flutterwid/DashBoard.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(new MyApp());
}
bool switchValue=false;
ThemeData themeValue=ThemeData.dark();
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
themvalues(var switchValue){
  var theme;
  setState(() {
    (switchValue==false)
    ?theme=ThemeData.light()
    :theme=ThemeData.dark();
  
  });
  return theme;
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Top10Widgets",
      home:AppBody(themefunc: themvalues,),
      theme:
      themvalues(switchValue),
     );
  }
}

class AppBody extends StatefulWidget {
  var themefunc;
  AppBody({this.themefunc});
  @override
  _AppBodyState createState() => _AppBodyState(themefunc);
}

class _AppBodyState extends State<AppBody> {
  var themefunc;
  _AppBodyState(this.themefunc);
  double radius1 = 70;
  double radius2 = 50;
  double radius3 = 35;
  @override
  void initState() {
    super.initState();

  // AppBarTheme(color: Colors.orangeAccent,
  // brightness: themefunc(switchValue));

    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        radius3 = 65;
        radius2 = 60;
      });
       Navigator.push(
       context,
       MaterialPageRoute(
         builder: (context)=>(DashBoard(themefunc:this.themefunc))
       ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100.0,
            ),
            AnimatedContainer(
              duration: Duration(seconds: 3),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                     Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> (DashBoard(themefunc:this.themefunc))
                     ));
                  });
                },
                child: CircleAvatar(
                  radius: radius1,
                  backgroundColor: Colors.purple,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: radius2,
                    child: FlutterLogo(
                      size: radius3,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            AnimatedContainer(
              duration: Duration(seconds: 2),
              alignment: Alignment.center,
              child: RichText(
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
                      ),
                    ]),
              ),
            ),
            SizedBox(
              height: 110.0,
            ),
            SpinKitChasingDots(
              color: Colors.blue,
            ),
            SizedBox(
              height: 18.0,
            ),
            RichText(
              text: TextSpan(
                  text: " Loading...",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 14.0,
                  ),
                  children: null),
            ),
            SizedBox(
              height: 60.0,
            ),
            RichText(
              text: TextSpan(
                  text: " Version 1.0\n   UzairLeo",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 14.0,
                  ),
                  children: null),
            ),
          ],
        ),
      ),
    );
  }
}
