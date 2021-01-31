import 'package:flutter/material.dart';
import 'survey3.dart';
import 'dart:ui';
import 'Header.dart';

class SurveyRoute2 extends StatefulWidget {
  @override
  _SurveyRoute2 createState() => _SurveyRoute2();
}

class _SurveyRoute2 extends State<SurveyRoute2>{
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                  Color(0xFFFFCDB2),
                  Color(0xFFE5989B),
                ])
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height:100,),
                Header(),
                Expanded(
                  child:
                  Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0XFFFCF0F0),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(65),
                            topRight: Radius.circular(65),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ]),
                      child: Column(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.fromLTRB(40, 100, 40, 0),
                              child: Text('What qualities do you look for in a friend?',
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Color(0XFF825252),
                                  )),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                                child: RichText(
                                  text: TextSpan(
                                      children: [
                                        TextSpan(
                                      text:
                                      'Honesty',
                              style: TextStyle(
                                color: Color(0XFFA46B6C),
                                fontSize: 24,
                              )),
                              WidgetSpan(
                                child: Icon(Icons.favorite_outlined, size:14, color: Color(0XFFA46B6C),))
                            ]))),
                            Container(
                                padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                                child: RichText(
                                    text: TextSpan(
                                        children: [
                                          TextSpan(
                                              text:
                                              'Patience',
                                              style: TextStyle(
                                                color: Color(0XFFA46B6C),
                                                fontSize: 24,
                                              )),
                                          WidgetSpan(
                                              child: Icon(Icons.favorite_outlined, size:14, color: Color(0XFFA46B6C),))
                                        ]))),
                            Container(
                                padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                                child: RichText(
                                    text: TextSpan(
                                        children: [
                                          TextSpan(
                                              text:
                                              'Kindness',
                                              style: TextStyle(
                                                color: Color(0XFFA46B6C),
                                                fontSize: 24,
                                              )),
                                          WidgetSpan(
                                              child: Icon(Icons.favorite_outlined, size:14, color: Color(0XFFA46B6C),))
                                        ]))),
                            Container(
                                padding: const EdgeInsets.fromLTRB(30, 12, 30, 12),
                                color: Color(0XFFD4A2A3).withOpacity(.38),
                                child: RichText(
                                    text: TextSpan(
                                        children: [
                                          TextSpan(
                                              text:
                                              'Loyalty',
                                              style: TextStyle(
                                                color: Color(0XFFA46B6C),
                                                fontSize: 24,
                                              )),
                                          WidgetSpan(
                                              child: Icon(Icons.favorite_outlined, size:14, color: Color(0XFFA46B6C),))
                                        ]))),
                            Container(
                                padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                                child: RichText(
                                    text: TextSpan(
                                        children: [
                                          TextSpan(
                                              text:
                                              'Creativity',
                                              style: TextStyle(
                                                color: Color(0XFFA46B6C),
                                                fontSize: 24,
                                              )),
                                          WidgetSpan(
                                              child: Icon(Icons.favorite_outlined, size:14, color: Color(0XFFA46B6C),))
                                        ]))),
                            Container(
                              height: 40.0,
                              width: 250.0,
                              child: Material(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Color(0XFFE5989B),
                                  child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => SurveyRoute3()),
                                        );
                                      },
                                      child: Center(
                                          child: Text(
                                            "N E X T",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0,
                                            ),
                                          )
                                      )
                                  )),
                            ),
                          ]
                      )
                  ),
                )],
            )
        )
    );



  }
}

