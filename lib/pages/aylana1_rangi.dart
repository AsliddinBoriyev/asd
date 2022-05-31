import 'package:flutter/material.dart';

class Aylana1Page extends StatefulWidget {
  static const id = "aylana_rangi";

  const Aylana1Page({Key key}) : super(key: key);

  @override
  State<Aylana1Page> createState() => _AylanaPageState();
}

class _AylanaPageState extends State<Aylana1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(200),
                gradient: SweepGradient(colors: [
                  Colors.green.shade900,
                  Colors.red,
                  Colors.green.shade900,
                  Colors.blue.shade800,
                  Colors.green.shade900,
                  Colors.red,
                  Colors.green.shade900,
                  Colors.blue.shade800,
                  Colors.green.shade900,
                ])),
            child: Container(
              margin: EdgeInsets.all(70),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(200),
              ),
            ),
          ),
        ));
  }
}