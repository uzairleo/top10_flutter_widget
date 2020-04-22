import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:top10flutterwid/Widgets/Allwidgets.dart';
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
    
  }
  _eachpageDetail()
  {
          if(widgetTitle=="SafeArea")
          {
            return SafeAreaWidget(appbarColor);
          
          }else
          if(widgetTitle=="Wrap")
          {
             return WrapWidget(appbarColor);
          }else
          if(widgetTitle=="RichText")
          {return RichTextWidget(appbarColor);

          }else
          if(widgetTitle=="ClipRect")
          {return ClipRRectWidget(appbarColor);

          }else
          if(widgetTitle=="MediaQuery")
          {return MediaQueryWidget(appbarColor);

          }else
          if(widgetTitle=="FutureBuilder")
          {return FutureBuilderWidget(appbarColor);

          }else
          if(widgetTitle=="Flexible")
          {return FlexibleWidget(appbarColor);

          }else
          if(widgetTitle=="SizedBox")
          {return SizedBoxWidget(appbarColor);

          }
          else
          if(widgetTitle=="Hero")
          {return HeroWidget(appbarColor);

          }else 
          if(widgetTitle=="SpinkitLoaders")
          {
            return SlpinkitLoaders(appbarColor);
          }

  }
}
