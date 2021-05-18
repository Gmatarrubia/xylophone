import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    print("Play sound: $soundNumber");
  }

  Expanded buildkey({int sound, Color selectedColor}) {
    return Expanded(
      child: TextButton(
        child: Container(
          color: selectedColor,
        ),
        onPressed: () {
          playSound(sound);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              buildkey(
                sound: 1,
                selectedColor: Colors.red
              ),
              buildkey(
                sound: 2,
                selectedColor: Colors.orange
              ),
              buildkey(
                sound: 3,
                selectedColor: Colors.yellow
              ),
              buildkey(
                sound: 4,
                selectedColor: Colors.green
              ),
              buildkey(
                sound: 5,
                selectedColor: Colors.teal
              ),
              buildkey(
                sound: 6,
                selectedColor: Colors.blue
              ),
            ],
          ),
        ),
      ),
    );
  }
}
