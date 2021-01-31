import 'package:flutter/material.dart';
import 'profile.dart';
import 'survey4.dart';
import 'dart:ui';
import 'Header.dart';

class SurveyRoute3 extends StatefulWidget {
  @override
  _SurveyRoute3 createState() => _SurveyRoute3();
}

class _SurveyRoute3 extends State<SurveyRoute3>{
  double _currentSliderValue = 1;
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
                                child: Text('On a scale of 1-10, how different do you want your friend to be? (1 being NOT DIFFERENT, and 10 being DIFFERENT)',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Color(0XFF825252),
                                    )),
                              ),
                              Container(
                                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                                  child: Slider(
                                    activeColor: Color(0XFFE5989B),
                                    inactiveColor: Color(0XFFFFCDB2),
                                    value: _currentSliderValue,
                                    min: 1,
                                    max: 10,
                                    divisions: 10,
                                    label: _currentSliderValue.round().toString(),
                                    onChanged: (double value) {
                                      setState(() {
                                        _currentSliderValue = value;
                                      });
                                    },
                                  ),
                              ),
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
                                            MaterialPageRoute(builder: (context) => Survey4Route()),
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