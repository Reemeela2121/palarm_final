import 'package:flutter/material.dart';
import 'profile.dart';
import 'survey2.dart';
import 'dart:ui';
import 'dart:async';
import 'ripple_animation.dart';

import 'Header.dart';
import 'InputWrapper.dart';

class Survey4Route extends StatefulWidget {
  @override
  _Survey4Route createState() => _Survey4Route();
}
class _Survey4Route extends State<Survey4Route>{
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
                              child: Text('Fill out the Form Below!',
                                  style: TextStyle(
                                    fontSize: 24,
                                    color: Color(0XFF825252),
                                  )),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.favorite,
                                    color: Color(0XFF825252)),
                                labelText: 'Name',
                                labelStyle: TextStyle(
                                  color: Color(0XFF825252),
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.favorite,
                                    color: Color(0XFF825252)),
                                labelText: 'Age',
                                labelStyle: TextStyle(
                                  color: Color(0XFF825252),
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.favorite,
                                    color: Color((0XFF825252))),
                                labelText: 'Pronouns',
                                labelStyle: TextStyle(
                                  color: Color(0XFF825252),
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.favorite,
                                    color: Color((0XFF825252))),
                                labelText: 'Fun Fact',
                                labelStyle: TextStyle(
                                  color: Color(0XFF825252),
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                            SizedBox(height: 50),
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
                                          MaterialPageRoute(builder: (context) =>  RipplesAnimation()),
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

