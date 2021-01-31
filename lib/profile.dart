import 'package:flutter/material.dart';
import 'package:palarmy/ripple_animation.dart';
import 'dart:ui';
import 'dart:async';
import 'sampledata/appdata.dart';
import 'Header.dart';
import 'package:firebase_database/firebase_database.dart';
import 'survey3.dart';


class ProfileRoute extends StatefulWidget {
  @override
  _ProfileRoute createState() => _ProfileRoute();
}
class _ProfileRoute extends State<ProfileRoute>{

  static final FirebaseDatabase firebaseDatabase = new FirebaseDatabase();

  static Future<String> getUserTokens({@required String uid}) async {
    String result;
    await FirebaseDatabase.instance.reference().child("Reem/$uid").once()
        .then((snapshot){result=snapshot.value;});
    print("heart_count: $result");

    return result;
  }
  final databaseReference = FirebaseDatabase.instance.reference();
  final textController = TextEditingController();
  final zodiacController = TextEditingController();
  final ageController = TextEditingController();
  final pronounController = TextEditingController();
  final funfactController = TextEditingController();
  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    Future<String> token = getUserTokens(uid: 'heart_count');
    textController.text = appData.text;
    zodiacController.text = appData.zodiac;
    ageController.text = appData.age.toString();
    pronounController.text = appData.pronouns;
    funfactController.text = appData.funFact;

    String profileMessage = '♪ username: ' + textController.text;
    String funFact = '♪ fun fact: ' + funfactController.text;
    String age = '♪ age:  ' + ageController.text;
    String zodiacSign = '♪ zodiac sign: ' + zodiacController.text;
    String pronouns = '♪ pronouns: ' + pronounController.text;
    //fun fact about self
    //age
    //display zodiac sign
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                Color(0xFFFFCDB2),
                Color(0xFFE5989B),
              ])
          ),

          child: Stack(
              children: <Widget>[
                Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 150, 20, 0),
                        width: 400,
                        height: 400,
                        child: SizedBox(
                            child: Container(
                              child: Icon(Icons.person, color: Color(0XFFE5989B), size: 250,),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white,
                                    width: 10),
                              ),
                            )
                        ),
                      ),
                      SizedBox(height: 50),
                      Expanded(
                          child:
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Color(0XFFFCF0F0),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(65),
                                    topRight: Radius.circular(65)),
                                boxShadow: [
                                  BoxShadow(color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  ),
                                ]),
                            child: Column(
                                children: <Widget>[
                                  Container(
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.fromLTRB(20,50,20,20),
                                      child: Text(profileMessage,
                                          style: TextStyle(
                                            fontSize: 25,
                                            color: Color(0xFFE5989B),
                                            fontWeight: FontWeight.bold,
                                          ))),
                                  Container(
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.fromLTRB(20,20,20,20),
                                      child: Text(zodiacSign,
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Color(0xFFE5989B),
                                            fontWeight: FontWeight.bold,
                                          ))),
                                  Container(
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.fromLTRB(20,20,20,20),
                                      child: Text(age,
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Color(0xFFE5989B),
                                            fontWeight: FontWeight.bold,
                                          ))),
                                  Container(
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.fromLTRB(20,20,20,20),
                                      child: Text(funFact,
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Color(0xFFE5989B),
                                            fontWeight: FontWeight.bold,
                                          ))),
                                  Container(
                                      alignment: Alignment.centerLeft,
                                      padding: const EdgeInsets.fromLTRB(20,20,20,20),
                                      child: Text(pronouns,
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Color(0xFFE5989B),
                                            fontWeight: FontWeight.bold,
                                          ))),

                                ]),

                          )),

                    ])
              ])),


      floatingActionButton: Container(
        height: 90.0,
        width: 90.0,
        child: FittedBox(
          child: FloatingActionButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RipplesAnimation()),
            );
          },
              child: Icon(Icons.arrow_back_ios, color: Color(0xFFE5989B)),
              backgroundColor: Color(0xFFFFCDB2)),
        ),
      ),
    );

  }

}