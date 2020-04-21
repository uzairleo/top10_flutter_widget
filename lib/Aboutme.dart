import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
aboutme(BuildContext context)
{
  return 
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            child: Container(
              height: 300.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "About me",
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Satisfy'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'I am Uzairleo from Islamia College Peshawar.'
                      'I am a software engineer who love his work '
                      'as well as Flutter Developer expert for '
                      'Android/Cross platform Application.Search'
                      'engine Optimizer as well as Graphics Designer. '
                      ' Still building up or learning some more skills',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      "Contact me",
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Satisfy'),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                          icon: Icon(FontAwesomeIcons.facebook),
                          onPressed: () {
                            urlLauncher(
                                "https://web.facebook.com/uzairleo.336");
                          }),
                      IconButton(
                          icon: Icon(FontAwesomeIcons.youtube),
                          onPressed: () {
                            urlLauncher(
                                "https://www.youtube.com/channel/UCbLTPRCpnfaJujz9ApONdAw");
                          }),
                      IconButton(
                          icon: Icon(FontAwesomeIcons.github),
                          onPressed: () {
                            urlLauncher(
                                "https://github.com/uzairleo/file_saving_flutter-sharedpref-Sqflite-FileHandling-");
                          }),
                      IconButton(
                          icon: Icon(Icons.mail),
                          onPressed: () {
                            urlLauncher(
                                "https://mail.google.com/mail/u/0/#inbox");
                          }),
                    ],
                  )
                ],
              ),
            ),
          );
        });
}
urlLauncher(String loadPath)async{

  if(await canLaunch(loadPath))
  {
    await launch(loadPath);
  }else{
    throw "error ahead";
  }

}