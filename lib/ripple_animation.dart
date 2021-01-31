import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'circle_painter.dart';
import 'curve_wave.dart';
import 'profile.dart';
import 'sampledata/appdata.dart';
import 'dart:collection';

class RipplesAnimation extends StatefulWidget {


  const RipplesAnimation({Key key, this.size = 80.0, this.color = const Color(0xFFFCF0F0),
    this.onPressed, @required this.child}) : super(key: key);
  final double size;
  final Color color;
  final Widget child;
  final VoidCallback onPressed;

  @override
  _RipplesAnimationState createState() => _RipplesAnimationState();
}

class _RipplesAnimationState extends State<RipplesAnimation> with TickerProviderStateMixin {
  final textController = TextEditingController();
  var reemMap = {
    "username": "reem",
    "pronouns": "she/her/hers",
    "zodiac": "aries",
    "age": 21,
    "fun_fact" : "my cat is tiktok famous",
    "alignment": 84,
    "similarity_score": 10,
    "heart_count": 3,
  };

  // receive data from the FirstScreen as a parameter
  //final String name;
  //_RipplesAnimationState({Key key, @required this.name}) : super(key: key);
//  SecondScreen({Key key, @required this.text}) : super(key: key);
  AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    )..repeat();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  Widget _button() {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(widget.size),
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: <Color>[
                widget.color,
                Color.lerp(widget.color, Colors.black, .05)
              ],
            ),
          ),
          child: ScaleTransition(
              scale: Tween(begin: 0.95, end: 1.0).animate(
                CurvedAnimation(
                  parent: _controller,
                  curve: const CurveWave(),
                ),
              ),
              child: Icon(Icons.favorite_outlined, color: Color(0xFFE5989B), size:45),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    textController.text = appData.text;
    appData.age = reemMap["age"];
    appData.funFact = reemMap["fun_fact"];
    appData.zodiac = reemMap["zodiac"];
    appData.pronouns = reemMap["pronouns"];
    return Scaffold(
      body:  Container(
        width: double.infinity,
        decoration: BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topCenter, colors: [
        Color(0xFFFFCDB2),
    Color(0xFFE5989B),
    ])
    ),
    child: Stack (
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
              padding: const EdgeInsets.fromLTRB(120,100,100,700),
              child: Text ('Stand within 10ft and '
                  'listen for the ♪ ding ♪',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0XFFDB8285),
                  ))),
          Container(
              padding: const EdgeInsets.fromLTRB(20,100,20,200),
              child: Text (reemMap["heart_count"].toString(),
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFFFCF0F0),
                    fontWeight: FontWeight.bold,
                  ))),
          Container(
              padding: const EdgeInsets.fromLTRB(20,100,20,180),
              child: Text ('heart count',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFFCF0F0),
                  ))),
          Center(
          child: CustomPaint(
            painter: CirclePainter(
              _controller,
              color: widget.color,
            ),
            child: SizedBox(
              width: widget.size * 4.125,
              height: widget.size * 4.125,
              child: _button(),
            ),
        ),
      ),
    ]
      )),
      floatingActionButton: Container(
        height: 90.0,
        width: 90.0,
        child: FittedBox(
          child: FloatingActionButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileRoute()),
            );
          },
            child: Icon(Icons.perm_identity, color: Color(0xFFE5989B)),
            backgroundColor: Color(0xFFFFCDB2)),
        ),
      ),

    );
  }
}
