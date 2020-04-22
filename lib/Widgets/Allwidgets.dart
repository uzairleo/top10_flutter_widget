import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:top10flutterwid/constants/Demo_Model.dart';
import 'package:top10flutterwid/Widgets/api.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:flutter_spinkit/flutter_spinkit.dart';
// class AllWidgets{


//   static var safeArea=

// }
class SafeAreaWidget extends StatefulWidget {
  final  abcolor;
  SafeAreaWidget(this.abcolor);
      @override
      _SafeAreaWidgetState createState() => _SafeAreaWidgetState(abcolor);
    }
    
    class _SafeAreaWidgetState extends State<SafeAreaWidget> {
      var abcolor;
      _SafeAreaWidgetState(this.abcolor);
      ///Bool value to control the behaviour of SafeArea widget.
      bool _isEnabled = true;

    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: SafeArea(
            top: _isEnabled,
            bottom: _isEnabled,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                  child: Text(
                    "This widget is below safe area. If you remove the SafeArea "
                        "widget then this text will be behind the notch.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
    
                ///Press this button to toggle the value of _isEnabled variable
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.indigo,
                  onPressed: () => setState(() {
                        _isEnabled == true ? _isEnabled = false : _isEnabled = true;
                      }),
                  child: Text(_isEnabled ? "Disable SafeArea" : "Enable SafeArea"),
                ),
    
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                  child: Text(
                    "This widget is above safe area",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    } 
    class WrapWidget extends StatefulWidget {
    final abarColor;
        WrapWidget(this.abarColor);
        @override
        _WrapWidgetState createState() => _WrapWidgetState(abarColor);
    }
      
    class _WrapWidgetState extends State<WrapWidget> {
      var abarColor;
      _WrapWidgetState(this.abarColor);
        BuildContext context; //global context
      
        @override
        Widget build(BuildContext context) {
          this.context = context;
          return Scaffold(
            appBar: AppBar(
              backgroundColor: abarColor,
              title: Container(
                child: Center(
                  child: Text(
                    'Wrap Widget',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        // fontFamily: Utils.ubuntuRegularFont
                        ),
                  ),
                ),
                margin: EdgeInsets.only(right: 48),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 16, bottom: 16),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Without Wrap widget',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  // fontFamily: Utils.ubuntuRegularFont
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 12, right: 12, top: 8),
                              child: Text(
                                '''Here we observe that the layout is overflowing 
                                 to the right which results in a broken widget''',
                                style: TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 14.0,
                                    fontStyle: FontStyle.italic,
                                    // fontFamily: Utils.ubuntuRegularFont
                                    ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
      
                      ///This will create an overflow error
                      Row(
                        children: <Widget>[
                          chipDesign("Food", Color(0xFF4fc3f7)),
                          chipDesign("Lifestyle", Color(0xFFffb74d)),
                          chipDesign("Health", Color(0xFFff8a65)),
                          chipDesign("Sports", Color(0xFF9575cd)),
                          chipDesign("Nature", Color(0xFF4db6ac)),
                          chipDesign("Fashion", Color(0xFFf06292)),
                          chipDesign("Heritage", Color(0xFFa1887f)),
                          chipDesign("City Life", Color(0xFF90a4ae)),
                          chipDesign("Entertainment", Color(0xFFba68c8)),
                        ],
                      ),
                    ],
                  ),
      
                  divider(context),
      
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: 16),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'With Wrap widget',
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  // fontFamily: Utils.ubuntuRegularFont
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 12, right: 12, top: 8),
                              child: Text(
                                'Here we observe that chips are contained inside a Wrap '
                                'widget. It adjusts all the children according to the space'
                                'available and automatically wraps to the next line',
                                style: TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 14.0,
                                    fontStyle: FontStyle.italic,
                                    // fontFamily: Utils.ubuntuRegularFont
                                    ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
      
                      ///This will handle itself to get rid of the overflow error
                      Wrap(
                        spacing: 0.0, // gap between adjacent chips
                        runSpacing: 0.0, // gap between lines
                        children: <Widget>[
                          chipDesign("Food", Color(0xFF4fc3f7)),
                          chipDesign("Lifestyle", Color(0xFFffb74d)),
                          chipDesign("Health", Color(0xFFff8a65)),
                          chipDesign("Sports", Color(0xFF9575cd)),
                          chipDesign("Nature", Color(0xFF4db6ac)),
                          chipDesign("Fashion", Color(0xFFf06292)),
                          chipDesign("Heritage", Color(0xFFa1887f)),
                          chipDesign("City Life", Color(0xFF90a4ae)),
                          chipDesign("Entertainment", Color(0xFFba68c8)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
      }
      
      
    ///Common method to design a chip with different properties
    ///like label and background color
    Widget chipDesign(String label, Color color) => Container(
          child: Chip(
            label: Text(
                label,
                style: TextStyle(
                    color: Colors.white, 
                    // fontFamily: Utils.ubuntuRegularFont
                    ),
              ),
              backgroundColor: color,
              elevation: 4,
              shadowColor: Colors.grey[50],
              padding: EdgeInsets.all(4),
            ),
            margin: EdgeInsets.only(left: 12, right: 12, top: 2, bottom: 2),
          );
      
      ///Method to create a divider with added margin
    Container divider(BuildContext context) => Container(
        child: Divider(),
        margin: EdgeInsets.only(left: 10, right: 10, top: 28, bottom: 28),
    );

    class RichTextWidget extends StatefulWidget {
      final abarColor;
      RichTextWidget(this.abarColor);
  @override
  _RichTextWidgetState createState() => _RichTextWidgetState(abarColor);
}

class _RichTextWidgetState extends State<RichTextWidget> {
  final abarColor;
  _RichTextWidgetState(this.abarColor);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: abarColor,
        centerTitle: true,
        title: Text(
          'RichText Widget',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              // fontFamily: Utils.ubuntuRegularFont
              ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: (){} 
            // => Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     // builder: (context) => CodeStreen(code: Code.richTextCode),
            //   ),
            // ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: RichText(
          text: TextSpan(
            /// A default style for all the TextSpans below.
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 14.0,
              color: Colors.black,
              height: 1.5,
            ),
            children: <TextSpan>[
              TextSpan(text: "This is a normal text "),
              TextSpan(
                text: "which suddenly switches to a bold text ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              ),
              TextSpan(
                text:
                    "which is now italic as well. But what if it was colored ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 14.0),
              ),
              TextSpan(
                text: "like this text. ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.green,
                    fontSize: 14.0),
              ),
              TextSpan(
                text: "Might as well underline it.\n",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.green,
                    decoration: TextDecoration.underline,
                    fontSize: 14.0),
              ),
              TextSpan(
                text:
                    "Let us now increase the font size so that you can read it properly.",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.green,
                    decoration: TextDecoration.underline,
                    fontSize: 18.0),
              ),
              TextSpan(
                text: "\n\nI wonder what more can we do before ending this. ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.green,
                    decoration: TextDecoration.underline,
                    fontSize: 18.0),
              ),
              TextSpan(
                text:
                    "Oh yes, Let's give this text a background color to highlight it",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.green,
                    decoration: TextDecoration.underline,
                    backgroundColor: Colors.yellowAccent,
                    fontSize: 18.0),
              ),
              TextSpan(
                text: "\n\nOne more thing, You can add links as well. Click ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.green,
                    fontSize: 18.0),
              ),
              TextSpan(
                  text: "here",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.blueAccent,
                      decoration: TextDecoration.underline,
                      fontSize: 18.0),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launch(
                          "https://github.com/annshsingh/flutter-widget-guide");
                    }),
              TextSpan(
                text: " to see how it works",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.green,
                    fontSize: 18.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ClipRRectWidget extends StatefulWidget {
  final abarColor;
  ClipRRectWidget(this.abarColor);
  @override
  _ClipRRectWidgetState createState() => _ClipRRectWidgetState(abarColor);
}

class _ClipRRectWidgetState extends State<ClipRRectWidget> {
  var _value = 50.0;
var abarColor;
_ClipRRectWidgetState(this.abarColor);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: abarColor,
        centerTitle: true,
        title: Text(
              'ClipRRect Widget',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  // fontFamily: Utils.ubuntuRegularFont
                  ),
            ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed:(){} 
            // () => Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => CodeScreen(code: Code.clipRrectCode),
            //   ),
            // ),
          )
        ],
      ),
      body: ListView(children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 24, bottom: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 200,
                height: 200,
                margin: EdgeInsets.all(12),
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      child: Container(
                        color: Colors.amber,
                      ),
                      borderRadius: BorderRadius.circular(_value),
                      clipBehavior: Clip.antiAlias,
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        width: 100,
                        height: 100,
                        child: FlutterLogo(
                          colors: Colors.lightBlue,
                          textColor: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'Slide the slider widget to change the value of radius\n'
                          'to observe changes on borders of the widget below',
                      style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 14.0,
                          fontStyle: FontStyle.italic,
                          // fontFamily: Utils.ubuntuRegularFont
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 24),
                child: Slider(
                  value: _value,
                  activeColor: Colors.lightBlue,
                  inactiveColor: Colors.lightBlue[50],
                  min: 0.0,
                  max: 100.0,
                  divisions: 100,
                  label: '${_value.round()}',
                  onChanged: (double value) {
                    setState(() {
                      _value = value;
                    });
                  },
                ),
              ),
              const Text('Drag to change value of Radius'),
            ],
          ),
        ),
      ]),
    );
  }
}
class MediaQueryWidget extends StatefulWidget {
  final abarColor;
  MediaQueryWidget(this.abarColor);
  @override
  _MediaQueryWidgetState createState() => _MediaQueryWidgetState(abarColor);
}

class _MediaQueryWidgetState extends State<MediaQueryWidget> {
  var abarColor;
  _MediaQueryWidgetState(this.abarColor);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: abarColor,
        centerTitle: true,
        title: Text(
          'MediaQuery Widget',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              // fontFamily: Utils.ubuntuRegularFont
              ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed:(){}
            //  () => Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => CodeScreen(code: Code.mediaQueryCode),
            //   ),
            // ),
          )
        ],
      ),
      body: MediaQuery.of(context).orientation == Orientation.portrait ?
          singleColumnLayout(context) :
          doubleColumnLayout(context)
    );
  }
}

Widget singleColumnLayout(BuildContext context) => Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "My device info - ",
          style: TextStyle(
              fontSize: 24.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              // fontFamily: Utils.ubuntuRegularFont
              ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Height: ${MediaQuery.of(context).size.height}",
          style: TextStyle(
              fontSize: 14.0,
              color: Colors.black,
              // fontFamily: Utils.ubuntuRegularFont
              ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Width: ${MediaQuery.of(context).size.width}",
          style: TextStyle(
              fontSize: 14.0,
              color: Colors.black,
              // fontFamily: Utils.ubuntuRegularFont
              ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Orientation: ${MediaQuery.of(context).orientation}",
          style: TextStyle(
              fontSize: 14.0,
              color: Colors.black,
              // fontFamily: Utils.ubuntuRegularFont
              ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Brightness: ${MediaQuery.of(context).platformBrightness}",
          style: TextStyle(
              fontSize: 14.0,
              color: Colors.black,
              // fontFamily: Utils.ubuntuRegularFont
              ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "System Padding: ${MediaQuery.of(context).padding}",
          style: TextStyle(
              fontSize: 14.0,
              color: Colors.black,
              // fontFamily: Utils.ubuntuRegularFont
              ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Device Pixel Ratio: ${MediaQuery.of(context).devicePixelRatio}",
          style: TextStyle(
              fontSize: 14.0,
              color: Colors.black,
              // fontFamily: Utils.ubuntuRegularFont
              ),
        ),
      ),
    ],
  ),
);

Widget doubleColumnLayout(BuildContext context) => Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  mainAxisSize: MainAxisSize.max,
  children: <Widget>[
    Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "My device info - ",
          style: TextStyle(
              fontSize: 24.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              // fontFamily: Utils.ubuntuRegularFont
              ),
        ),
      ),
    ),
    Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Height: ${MediaQuery.of(context).size.height}",
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
                // fontFamily: Utils.ubuntuRegularFont
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Width: ${MediaQuery.of(context).size.width}",
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
                // fontFamily: Utils.ubuntuRegularFont
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Orientation: ${MediaQuery.of(context).orientation}",
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
                // fontFamily: Utils.ubuntuRegularFont
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Brightness: ${MediaQuery.of(context).platformBrightness}",
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
                // fontFamily: Utils.ubuntuRegularFont
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "System Padding: ${MediaQuery.of(context).padding}",
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
                // fontFamily: Utils.ubuntuRegularFont
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Device Pixel Ratio: ${MediaQuery.of(context).devicePixelRatio}",
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
                // fontFamily: Utils.ubuntuRegularFont
                ),
          ),
        ),
      ],
    )
  ],
);
class FutureBuilderWidget extends StatefulWidget {
  final abarColor;
  FutureBuilderWidget(this.abarColor);
  @override
  _FutureBuilderWidgetState createState() => _FutureBuilderWidgetState(abarColor);
}

class _FutureBuilderWidgetState extends State<FutureBuilderWidget> {
  var abarColor;
  _FutureBuilderWidgetState(this.abarColor);
  bool _isButtonClicked = false;
  var _buttonIcon = Icons.cloud_download;
  var _buttonText = "Fetch Data";
  var _buttonColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: abarColor,
        centerTitle: true,
        title: Text(
          'Future Builder Widget',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              // fontFamily: Utils.ubuntuRegularFont
              ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: (){}
            // () => Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => CodeScreen(code: Code.futurBuilderCode),
            //       ),
            //     ),
          )
        ],
      ),
      body: Center(
        child: FutureBuilder<Demo>(
          ///If future is null then API will not be called as soon as the screen
          ///loads. This can be used to make this Future Builder dependent
          ///on a button click.
          future: _isButtonClicked ? getDemoResponse() : null,
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {

              ///when the future is null
              case ConnectionState.none:
                return Text(
                  'Press the button to fetch data',
                  textAlign: TextAlign.center,
                );

              case ConnectionState.active:

              ///when data is being fetched
              case ConnectionState.waiting:
                return CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue));

              case ConnectionState.done:
                ///task is complete with an error (eg. When you
                ///are offline)
                if (snapshot.hasError)
                  return Text(
                    'Error:\n\n${snapshot.error}',
                    textAlign: TextAlign.center,
                  );

                ///task is complete with some data
                return Text(
                  'Fetched Data:\n\n${snapshot.data.title}',
                  textAlign: TextAlign.center,
                );
            }
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: _buttonColor,
        onPressed: () {
          ///Calling method to fetch data from the server
          getDemoResponse();

          ///You need to reset UI by calling setState.
          setState(() {
            _isButtonClicked == false
                ? _isButtonClicked = true
                : _isButtonClicked = false;

            if (!_isButtonClicked) {
              _buttonIcon = Icons.cloud_download;
              _buttonColor = Colors.green;
              _buttonText = "Fetch Data";
            } else {
              _buttonIcon = Icons.replay;
              _buttonColor = Colors.deepOrange;
              _buttonText = "Reset";
            }
          });
        },
        icon: Icon(
          _buttonIcon,
          color: Colors.white,
        ),
        label: Text(
          _buttonText,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
class FlexibleWidget extends StatefulWidget {
  final abarColor;
  FlexibleWidget(this.abarColor);
  @override
  _FlexibleWidgetState createState() => _FlexibleWidgetState(abarColor);
}

class _FlexibleWidgetState extends State<FlexibleWidget> {
var abarColor;
_FlexibleWidgetState(this.abarColor);
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: abarColor,
        centerTitle: true,
        title: Text(
          'Flexible Widget',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              // fontFamily: Utils.ubuntuRegularFont
              ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed:(){} 
            // () => Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => CodeScreen(code: Code.flexibleCode),
            //   ),
            // ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Flexible(
            flex: 2,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, top: 12.0, right: 12.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "1/3",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "(2 Flex / 6 Total)",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                  color: Colors.cyan,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 12.0, top: 12.0, right: 12.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "1/2",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "(3 Flex / 6 Total)",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                  color: Colors.teal,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 12.0, top: 12.0, right: 12.0, bottom: 12.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "1/6",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
                        child: Text(
                          "(1 Flex)",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                  color: Colors.indigo,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class HeroWidget extends StatelessWidget {
  final abarColor;
  HeroWidget(this.abarColor);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: abarColor,
        centerTitle: true,
        title: Text(
              'Hero Widget',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  // fontFamily: Utils.ubuntuRegularFont
                  ),
            ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed:(){}
            //  () => Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => CodeScreen(code: Code.heroCode),
            //   ),
            // ),
          )
        ],
      ),
      body:
      //  WillPopScope(
        // child:
         GestureDetector(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 12, right: 12, top: 8),
                  child: Text(
                    'Click the Widget below to observe Hero animation in slow motion',
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 14.0,
                        fontStyle: FontStyle.italic,
                        // fontFamily: Utils.ubuntuRegularFont
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Hero(
                      key: Key('herowidget'),
                      tag: "herowidget",
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.all(12),
                        child: Stack(
                          children: <Widget>[
                            ClipRRect(
                              child: Container(
                                color: Colors.amber,
                              ),
                              borderRadius: BorderRadius.circular(100),
                              clipBehavior: Clip.antiAlias,
                            ),
                            Center(
                              child: Container(
                                margin: EdgeInsets.all(10),
                                width: 100,
                                height: 100,
                                child: FlutterLogo(
                                  colors: Colors.lightBlue,
                                  textColor: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>(Hero2Widget())
              ));
              timeDilation = 2.0;
            }),
        // onWillPop: () {
          // /Reset timeDilation since it is a Global property
          // timeDilation = 1.0;
          // Navigator.of(context).pop(true);
        // },
      // ),
    );
  }

}
class Hero2Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Center(
            child: Text(
              'Hero 2 Widget',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  // fontFamily: Utils.ubuntuRegularFont
                  ),
            ),
          ),
          margin: EdgeInsets.only(right: 48),
        ),
      ),
      body:
      //  WillPopScope(
        // child:
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Hero(
              tag: "herowidget",
              key:Key('herowidget'),
              child: Container(
                width: 200,
                height: 200,
                margin: EdgeInsets.all(12),
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      child: Container(
                        color: Colors.amber,
                      ),
                      borderRadius: BorderRadius.circular(0),
                      clipBehavior: Clip.antiAlias,
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        width: 100,
                        height: 100,
                        child: FlutterLogo(
                          colors: Colors.lightBlue,
                          textColor: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        // onWillPop: () {
        //   timeDilation = 4.0;
        //   Navigator.of(context).pop(true);
        // },
      // ),
    );
  }
}
class SizedBoxWidget extends StatefulWidget {
  final abarColor;
  SizedBoxWidget(this.abarColor);
  @override
  _SizedBoxWidgetState createState() => _SizedBoxWidgetState(abarColor);
}

class _SizedBoxWidgetState extends State<SizedBoxWidget> {
  var abarColor;
  _SizedBoxWidgetState(this.abarColor);
  ///Using a list to control both the dimensions at once
  List<double> _dimentions = [100.0, 100.0];
  List<double> _dimentions1 = [200.0, 200.0];
  List<double> _dimentions2 = [300.0, 100.0];
  List<double> _dimentions3 = [200.0, double.infinity];
  List<double> _dimentions4 = [300.0, 300.0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: abarColor,
        centerTitle: true,
        title: Text(
          'SizedBox Widget',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              // fontFamily: Utils.ubuntuRegularFont
              ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed:(){} 
            // () => Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => CodeScreen(code: Code.sizedCode),
            //       ),
            //     ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(18),
              child: Center(
                child: SizedBox(
                  width: _dimentions[1],
                  height: _dimentions[0],
                  child: RaisedButton(
                    child: Text(
                      'Change my size',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      print("Pressed");
                    },
                    color: Colors.indigo,
                  ),
                ),
              ),
            ),
            dividerr(context),
            Container(
              margin: EdgeInsets.only(left: 12, right: 12),
              child: Wrap(
                children: <Widget>[
                  _OptionItem(_dimentions1, _dimentions, _onDimentionsChanged,
                      'h: 200 | w: 200'),
                  _OptionItem(_dimentions2, _dimentions, _onDimentionsChanged,
                      'h: 300 | w: 100'),
                  _OptionItem(_dimentions3, _dimentions, _onDimentionsChanged,
                      'h: 200 | w: double.infinity'),
                  _OptionItem(_dimentions4, _dimentions, _onDimentionsChanged,
                      'h: 300 | w: 300'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _onDimentionsChanged(List<double> list) => setState(() {
        _dimentions = list;
      });
}

class _OptionItem<T> extends StatelessWidget {
  const _OptionItem(this.value, this.groupValue, this.onChanged, this.title);

  final String title;
  final T value;
  final T groupValue;
  final ValueChanged<T> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Radio<T>(
            value: value,
            groupValue: groupValue,
            activeColor: Colors.lightBlue,
            onChanged: onChanged),
        GestureDetector(
          onTap: () {
            onChanged(value);
          },
          child: Text(
            title,
            style:
                TextStyle(fontSize: 14.0, 
                // fontFamily: Utils.ubuntuRegularFont
                ),
          ),
        ),
      ],
    );
  }
}

Container dividerr(BuildContext context) => Container(
      child: Divider(),
      margin: EdgeInsets.only(left: 10, right: 10, top: 14),
    );


    class SlpinkitLoaders extends StatelessWidget {
      final abarColor;
      SlpinkitLoaders(this.abarColor);
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: abarColor,
          appBar: AppBar(
            title: Text(
              "Spinkit_Animated\n   Loaders"
              ,textAlign:TextAlign.justify,
              style:TextStyle(
                fontWeight:FontWeight.bold,
              ),
            ),
          ),
          body: GridView.count(
            crossAxisCount: 5 ,
            children: <Widget>[
              SpinKitChasingDots(color: Colors.blue,),
              SpinKitCircle(color: Colors.orange,),
              SpinKitCubeGrid(color: Colors.green,),
              SpinKitDoubleBounce(color: Colors.purple,),


              SpinKitDualRing(color: Colors.red,),
              SpinKitFadingCircle(color: Colors.yellow,),
              SpinKitFadingFour(color: Colors.indigo,),
              SpinKitFadingCube(color: Colors.pink,),


              SpinKitFadingGrid(color: Colors.blueGrey,),
              SpinKitFoldingCube(color: Colors.cyanAccent,),
              SpinKitHourGlass(color: Colors.brown,),
              SpinKitPouringHourglass(color: Colors.teal,),


              SpinKitPulse(color: Colors.greenAccent,),
              // SpinKitPumpCurve()
              SpinKitPumpingHeart(color: Colors.deepOrange,),
              SpinKitRing(color: Colors.deepPurple,),
              // SpinKitRingCurve(),
              SpinKitRotatingCircle(color: Colors.redAccent,),
              SpinKitRotatingPlain(color: Colors.lightBlueAccent,),
              SpinKitSpinningCircle(color:Colors.lightGreenAccent),
              SpinKitSquareCircle(color: Colors.grey,),
              SpinKitThreeBounce(color: Colors.red,),


              SpinKitWanderingCubes(color: Colors.pinkAccent,),
              SpinKitWave(color: Colors.yellow,type: SpinKitWaveType.start,),
              SpinKitWave(color: Colors.blue,type: SpinKitWaveType.center),
              SpinKitWave(color:Colors.deepPurple,type:SpinKitWaveType.end)            

            ],
          
          ),
          
        );
      }
    }