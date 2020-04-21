import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:top10flutterwid/DashBoard.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:top10flutterwid/BackHome.dart';
// import 'package:top10flutterwid/Home.dart';
// import 'package:backdrop/backdrop.dart';
// import 'package:flutter/foundation.dart'

// show debugDefaultTargetPlatformOverride; // for desktop embedder


void main()
{
  // debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia; //
  runApp(new MyApp());

}
  bool darkThemeEnabled=false;
class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {

Color appBarTheme=Colors.orangeAccent;
 Brightness  myBrightness=Brightness.dark;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Top10Widgets",
      home: AppBody(),
      theme: ThemeData(
        primaryColor: appBarTheme,
        brightness: darkThemeEnabled?Brightness.dark:Brightness.light,
        // accentColor: Colors.orangeAccent,
        appBarTheme: AppBarTheme(
          color: appBarTheme
        )
      ),
      
    );
   
  }


}

class AppBody extends StatefulWidget {
  AppBody();
  @override
  _AppBodyState createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  double radius1=70;
  double radius2=50;
  double radius3=35;
  @override
  void initState() { 
    super.initState();
  
  Future.delayed(
      Duration(seconds: 3),
      (){
        setState(() {
        
                   radius3=65;
                   radius2=60; 
        });
      }
    
    );
    // Future.delayed(
    //   Duration(seconds: 2),
    //   (){
    //     setState(() {
        
    //                radius1=80;
    //                radius2=70;
    //                radius3=40; 
    //     });
    //   }
    
    // );
    Future.delayed(
     Duration(seconds: 8),
    (){ Navigator.push(
       context,
       MaterialPageRoute(
         builder: (context)=>(DashBoard())
       ));
       
       
       }
      
    );
  }
 @override
  Widget build(BuildContext context) {
  return   Container(
      color: Colors.orangeAccent,
      child:
       Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
              SizedBox(height: 100.0,),
             AnimatedContainer(
               duration: Duration(seconds: 3),
               child:GestureDetector(
                 onTap: (){
                   setState(() {
                     Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> (DashBoard())
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

                ]
            ),
            ),
             ),
             SizedBox(height: 50.0,),
            //  SpinKitFoldingCube(
            //    color: Colors.blue,
            //  ),
            // SpinKitCircle(color: Colors.blue,),
            // SpinKitPouringHourglass(color: Colors.blue,),
            // SpinKitPulse(color: Colors.blue,),
            // SpinKitHourGlass(color: Colors.blue,),
                // SpinKitWave(color: Colors.blue,type: SpinKitWaveType.center),
             SpinKitChasingDots(
                color: Colors.blue,
                
             ),
            // SpinKitPumpingHeart(color: Colors.red,),
            //  CircularProgressIndicator(),
             SizedBox(height: 18.0,),
             RichText(
               text: TextSpan(
                 text:" Loading...",
                 style: TextStyle(
               color: Colors.black54,
               fontSize: 14.0,
             ),
                 children:null 
               ),
             ),
             SizedBox(height: 120.0,),
             RichText(
               text: TextSpan(
                 text:" Version 1.0\n   UzairLeo",
                 style: TextStyle(
               color: Colors.black54,
               fontSize: 14.0,
             ),
                 children:null 
               ),
             ),
                      
                   ],
        ),
      ),
       
    );
    
  
          }
  //       ),
  //     );
  // }
}

 