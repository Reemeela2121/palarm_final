import 'package:flutter/material.dart';
import 'survey2.dart';
import 'dart:ui';
import 'dart:async';

import 'Header.dart';
import 'InputWrapper.dart';

class SurveyRoute extends StatefulWidget {
  @override
  _SurveyRoute createState() => _SurveyRoute();
}
class _SurveyRoute extends State<SurveyRoute>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          child: Text('What is your Zodiac Sign?',
                          style: TextStyle(
                              fontSize: 24,
                            color: Color(0XFF825252),
                          )),
                        ),
                        InputWrapper(),
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
                            MaterialPageRoute(builder: (context) => SurveyRoute2()),
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

