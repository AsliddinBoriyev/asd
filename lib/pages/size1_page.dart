import 'package:flutter/material.dart';
class Size1Page extends StatefulWidget {
  static const id="shadow_page";
  const Size1Page({Key key}) : super(key: key);

  @override
  State<Size1Page> createState() => _Size1PageState();
}

class _Size1PageState extends State<Size1Page> {
  double hs = 50;
  double ws = 300;
  double fs = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  hs = 50;
                  ws = 300;
                  fs = 30;
                });
              },
              onTapDown: (d) {
                setState(() {
                  hs = 46;
                  ws = 290;
                  fs = 28;
                });
              },
              child: Container(
                alignment: Alignment.center,
                width: ws,
                height: hs,
                child: Text(
                  "Click me",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: fs, color: Colors.blue),
                ),
                decoration: BoxDecoration(
                  color: Colors.pink.shade900,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
