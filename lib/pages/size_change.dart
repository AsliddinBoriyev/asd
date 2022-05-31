import 'package:flutter/material.dart';

class SizePage extends StatefulWidget {
  static const id="size_page";
  SizePage({Key key}) : super(key: key);

  @override
  _SizePageState createState() => _SizePageState();
}

class _SizePageState extends State<SizePage> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));

    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.linearToEaseOut);

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizeTransition(
            sizeFactor: _animation,
            axis: Axis.vertical,
            axisAlignment: 0,
            child: Center(
              child: Container(
                height: 150,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(80),
                      bottomRight: Radius.circular(80),
                    )),
                child: Center(
                  child: Text(
                      'Custom',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}