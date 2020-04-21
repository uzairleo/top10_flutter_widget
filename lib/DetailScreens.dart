import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:top10flutterwid/Allwidgets.dart';
// import 'package:top10flutterwid/Constants.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:top10widgetsofflutter/Home.dart';
// import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
final String widgetTitle;
final Color appbarColor;
DetailScreen(this.widgetTitle,this.appbarColor);
  @override
  _DetailScreenState createState() => _DetailScreenState(this.widgetTitle,this.appbarColor);
}

class _DetailScreenState extends State<DetailScreen> {
String widgetTitle;
Color appbarColor;

_DetailScreenState(this.widgetTitle,this.appbarColor);//constructor
  @override
  Widget build(BuildContext context) {
      return _eachpageDetail();
    // Scaffold(
    //   appBar: AppBar(
    //     title:Text(widgetTitle),
    //     centerTitle: true,
    //     backgroundColor: appbarColor,
    //   ),
    //   body: _eachpageDetail(),
      
    // );
    
  }
//    void  _heroNavigateToLeo(BuildContext context){
//  Navigator.push(context, MaterialPageRoute(
//    builder: (context)=>(Scaffold(
//      body: Center(child: Hero(
//        tag: "uzair_leo",
//        child: Image.asset('images/circle-cropped.png'),
//      ),),
//    ))
//  ));
//   }
  _eachpageDetail()
  {
          if(widgetTitle=="SafeArea")
          {
            return SafeAreaWidget();
          
          }else
          if(widgetTitle=="Wrap")
          {
             return WrapWidget();
          }else
          if(widgetTitle=="RichText")
          {return RichTextWidget();

          }else
          if(widgetTitle=="ClipRect")
          {return ClipRRectWidget();

          }else
          if(widgetTitle=="MediaQuery")
          {return MediaQueryWidget();

          }else
          if(widgetTitle=="FutureBuilder")
          {return FutureBuilderWidget();

          }else
          if(widgetTitle=="Flexible")
          {return FlexibleWidget();

          }else
          if(widgetTitle=="SizedBox")
          {return SizedBoxWidget();

          }
          else
          if(widgetTitle=="Hero")
          {return HeroWidget();

          }else 
          if(widgetTitle=="SpinkitLoaders")
          {
            return SlpinkitLoaders();
          }

  }
}
