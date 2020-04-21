import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
import 'package:top10flutterwid/BackHome.dart';
import 'package:top10flutterwid/Home.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return 
    BackdropScaffold(
      frontLayer: Center(child:Text("I am front layer")),
      backLayer: Center(child:Text("i am back layer")),
      title: Text("testing"),
      iconPosition: BackdropIconPosition.leading,
    );
    // BackdropScaffold(
    //   // actions: <Widget>[
    //   // IconButton(icon: Icon(Icons.ac_unit),onPressed: ()=>{},)
    //   // ],
    //   frontLayerBorderRadius: BorderRadius.only(
    //       topLeft: Radius.circular(18.0), topRight: Radius.circular(18.0)),
    //   headerHeight: 50.0,

    //   iconPosition: BackdropIconPosition.leading,
    //   title: RichText(
    //     text: TextSpan(
    //         text: "TOP10",
    //         style: TextStyle(
    //           color: Colors.teal,
    //           fontSize: 24.0,
    //           fontWeight: FontWeight.bold,
    //         ),
    //         children: [
    //           TextSpan(
    //             text: "Flutter",
    //             style: TextStyle(
    //               color: Colors.blueAccent,
    //               fontSize: 24.0,
    //               fontWeight: FontWeight.bold,
    //             ),
    //           ),
    //           TextSpan(
    //             text: "Widgets",
    //             style: TextStyle(
    //               color: Colors.purple,
    //               fontSize: 22.0,
    //               fontWeight: FontWeight.bold,
    //             ),
    //           )
    //         ]),
    //   ),

    //   // backgroundColor: Colors.grey,
    //   // appBar: AppBar(

    //   //   elevation: 20.0,
    //   //   backgroundColor: Colors.orangeAccent,
    //   //  centerTitle: true,
    //   //   title: RichText(
    //   //   text: TextSpan(
    //   //     text: "TOP10",
    //   //     style: TextStyle(
    //   //       color: Colors.teal,
    //   //       fontSize: 24.0,
    //   //     fontWeight: FontWeight.bold,
    //   //     ),
    //   //     children: [
    //   //       TextSpan(
    //   //         text: "Flutter",
    //   //     style: TextStyle(
    //   //       color: Colors.blueAccent,
    //   //       fontSize: 24.0,
    //   //       fontWeight: FontWeight.bold,
    //   //     ),
    //   //       ),
    //   //       TextSpan(
    //   //         text: "Widgets",
    //   //       style: TextStyle(
    //   //       color: Colors.purple,
    //   //       fontSize: 24.0,
    //   //       fontWeight: FontWeight.bold,
    //   //     ),
    //   //       )
    //   //     ]
    //   //   ),
    //   //   ),
    //   // ),

    //   frontLayer: Home(),
    //   backLayer: BackHome(),
    //   // backLayer:  Center(
    //   //     child: Switch(
    //   //       value: darkThemeEnabled,
    //   //       onChanged:(changedTheme)
    //   //       {
    //   //         setState(() {
    //   //           darkThemeEnabled=changedTheme;
    //   //         });
    //   //       },
    //   //     ),
    //   //   )
    //   // backLayer: BackHome(bcolor,appbarcolor),
    //   // backLayer: Center(
    //   //   child:
    //   //   Column(
    //   // mainAxisAlignment:MainAxisAlignment.start,
    //   // children :<Widget>[
    //   //   Text("data"),
    //   //   Text("data"),
    //   //   Text("data"),
    //   //   Text("data")
    //   //  Row(
    //   //    children:<Widget>[
    //   //     //  Image.asset('/images/circle-cropped.png'),
    //   //      Text( "_discription"),
    //   //      ListTile(
    //   //       leading: Icon(Icons.code),
    //   //       title: Text("Code"),
    //   //       subtitle: Text("Source Code on Github"),
    //   //      onTap: (){},
    //   //      ),
    //   //      Divider(),
    //   //      ListTile(
    //   //        title: Text("Code"),
    //   //       leading: Icon(Icons.code),
    //   //       subtitle: Text("Source Code offline"),
    //   //         onTap: (){},
    //   //          ),

    //   //         //    ])
    //   //   ]

    //   // ),
    //   // ),

    //   // floatingActionButtonLocation: FloatingActionButtonLocation.,
    //   // floatingActionButton: FloatingActionButton(
    //   //   backgroundColor: Colors.deepOrange,
    //   //   child: Icon(Icons.info),
    //   //   onPressed: (){

    //   //  showDialog(
    //   //     context: context,
    //   //     builder: (BuildContext context){
    //   //       return CupertinoAlertDialog(

    //   //     title: Text("Contact us",style:Theme.of(context).textTheme.title),
    //   //     content: Text("I am uzair leo from islamia college university of peshwar a software developer"),
    //   //     actions: <Widget>[
    //   //       FlatButton(
    //   //         child: Text("OK"),
    //   //         onPressed: ()=>Navigator.pop(context),
    //   //       )
    //   //     ],
    //   //   );

    //   //     }
    // );
    
  }
}
