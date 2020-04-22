import 'package:flutter/material.dart';
import 'package:top10flutterwid/constants/CodeString.dart';

class Constants{
static Widget safeArea(){
  return  Scrollbar(
        /// For horizontal scrolling
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            width: 400.0,
            child: Scrollbar(
              /// For vertical scrolling
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int i) {
                  return Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      CodeString.SafeArea,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                    // child: RichText(
                    // text:
                    // text: DartSyntaxHighlighter().format(widget.code),
                  );})))));
}
}