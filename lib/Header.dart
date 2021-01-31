import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Center(
              child: Text('M A T C H',
                  style: TextStyle(
                    color: Color(0XFF825252),
                    fontSize: 36,
                  ))
          ),
          SizedBox(height:20),
          Center(
              child: Text('COMPATIBILITY SURVEY',
                  style: TextStyle(
                    color: Color(0XFFDC8E8D),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ))
          )
        ],
      ),
    );

  }
}