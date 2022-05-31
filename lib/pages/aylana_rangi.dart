import 'package:flutter/material.dart';

class AylanaPage extends StatefulWidget {
  static const id = "aylana_rangi";

  const AylanaPage({Key key}) : super(key: key);

  @override
  State<AylanaPage> createState() => _AylanaPageState();
}

class _AylanaPageState extends State<AylanaPage> {
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
                  Colors.green[900],
                  Colors.red[900],
                  Colors.red[700],
                  Colors.red[900],
                  Colors.green[900],
                  Colors.green,
                  Colors.green[900],
                  Colors.indigo[900],
                  Colors.indigo,
                  Colors.indigo[900],
                  Colors.green[900],
                  Colors.green[800],
                  Colors.green[900],
                  Colors.red[900],
                  Colors.red[700],
                  Colors.red[900],
                  Colors.green[900],
                  Colors.green[800],
                  Colors.green[900],
                  Colors.indigo[900],
                  Colors.indigo[800],
                  Colors.indigo[900],
                  Colors.green[900],
                  Colors.green,
                  Colors.green[900],
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