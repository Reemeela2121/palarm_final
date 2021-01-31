
import 'ripple_animation.dart';
import 'survey.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:async';
import 'sampledata/appdata.dart';

void main() => runApp(MaterialApp(
  home: HomePage(),
));

class PalarmApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'palarm',
      theme: ThemeData(
        primaryColor: Color(0xFFFFCDB2),
        accentColor: Color(0xFFE5989B),
      ),
      //home: PalarmMain(title: 'Palarm'),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameFieldController = new TextEditingController();
  static double _minHeight = 50, _maxHeight = 600;
  Offset _offset = Offset(0, _minHeight);
  bool _isOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: FlatButton(
              onPressed: _handleClick,
              splashColor: Colors.transparent,
              textColor: Colors.black,
              child: Text(_isOpen ? "Back" : ""),
            ),
          ),
          Align(child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0XFFFFCDB2), Color(0XFFE5989B)],)),
          )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      padding: const EdgeInsets.fromLTRB(110,290,0,0),
                      child: Text('P',
                          style: TextStyle(
                            fontSize: 110,
                            color: Color(0XFF825252),
                            fontFamily: 'NovaOval',
                          ))),
                  Container(
                      padding: const EdgeInsets.fromLTRB(0,330,150,0),
                      child: Text('AL.ARM',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0XFF825252),
                            fontFamily: 'NovaRound',
                          )))
                ],
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(20,0,20,10),
                  child: Text ('FRIENDSHIP A BUZZ AWAY',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0XFFDB8285),
                        fontWeight: FontWeight.bold,
                      ))),
              Container(
                  width: 300,
                  child: Column(
                    children: <Widget>[
                      TextField(
                        controller: _nameFieldController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person,
                              color: Colors.white),
                          labelText: 'Username',
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        ),
                        onChanged: (text) {
                          appData.text = text;
                        },
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Color(0XFFB5838D).withOpacity(.50),
                  )
              ),
              SizedBox(height:20.0),
              Container(
                height: 40.0,
                width: 250.0,
                child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0XFF825252),
                    child: GestureDetector(
                        onTap: () {
                          _sendDataToSecondScreen(context);
                        },
                        child: Center(
                            child: Text(
                              "Let's take the Survey!",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            )
                        )
                    )),
              ),
            ],
          ),
          GestureDetector(
            onPanUpdate: (details) {
              _offset = Offset(0, _offset.dy - details.delta.dy);
              if (_offset.dy < _HomePageState._minHeight) {
                _offset = Offset(0, _HomePageState._minHeight);
                _isOpen = false;
              } else if (_offset.dy > _HomePageState._maxHeight) {
                _offset = Offset(0, _HomePageState._maxHeight);
                _isOpen = true;
              }
              setState(() {});
            },
            child: AnimatedContainer(
              duration: Duration.zero,
              curve: Curves.easeOut,
              height: _offset.dy,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0XFF825252).withOpacity(.65),
              ),
              child: Text("M O R E                                    I N F O",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18.0,
                  )),
            ),
          ),
          Positioned(
            bottom: 2 * _HomePageState._minHeight - _offset.dy - 6, // 56 is the height of FAB so we use here half of it.
            child: FlatButton(
                child: Icon(_isOpen ? Icons.favorite_outlined : Icons.favorite_outlined,
                    color: Colors.white),
                onPressed: _handleClick,
                color: Color(0XFF825252).withOpacity(.65),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )
                )
            ),
          ),
        ],
      ),
    );
  }

// first it opens the sheet and when called again it closes.
  void _handleClick() {
    _isOpen = !_isOpen;
    Timer.periodic(Duration(milliseconds: 5), (timer) {
      if (_isOpen) {
        double value = _offset.dy + 10; // we increment the height of the Container by 10 every 5ms
        _offset = Offset(0, value);
        if (_offset.dy > _maxHeight) {
          _offset = Offset(0, _maxHeight); // makes sure it does't go above maxHeight
          timer.cancel();
        }
      } else {
        double value = _offset.dy - 10; // we decrement the height by 10 here
        _offset = Offset(0, value);
        if (_offset.dy < _minHeight) {
          _offset = Offset(0, _minHeight); // makes sure it doesn't go beyond minHeight
          timer.cancel();
        }
      }
      setState(() {});
    });
  }
  void _sendDataToSecondScreen(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SurveyRoute()));
  } // RipplesAnimation()

}
