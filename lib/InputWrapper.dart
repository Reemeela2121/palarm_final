import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: "Tutorial",
  home: InputWrapper(),
));

class InputWrapper extends StatefulWidget {
  @override
  _InputWrapperState createState() => _InputWrapperState();
}

class _InputWrapperState extends State<InputWrapper> {

  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsets.all(100.0),
          child: DropdownButton(
              value: _value,
              items: [
                DropdownMenuItem(
                  child: Text("Aries"),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text("Taurus"),
                  value: 2,
                ),
                DropdownMenuItem(
                    child: Text("Gemini"),
                    value: 3
                ),
                DropdownMenuItem(
                    child: Text("Cancer"),
                    value: 4
                ),
                DropdownMenuItem(
                    child: Text("Leo"),
                    value: 5
                ),
                DropdownMenuItem(
                    child: Text("Virgo"),
                    value: 6
                ),
                DropdownMenuItem(
                    child: Text("Libra"),
                    value: 7
                ),
                DropdownMenuItem(
                    child: Text("Scorpio"),
                    value: 8
                ),
                DropdownMenuItem(
                    child: Text("Sagittarius"),
                    value: 9
                ),
                DropdownMenuItem(
                    child: Text("Capricorn"),
                    value: 10
                ),
                DropdownMenuItem(
                    child: Text("Aquarius"),
                    value: 11
                ),
                DropdownMenuItem(
                    child: Text("Pisces"),
                    value: 12
                ),
              ],
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              }),
        );
  }
}