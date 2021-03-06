
import 'package:flutter/material.dart';
class HeartPage extends StatefulWidget {
  static const id="heart_page";
  HeartPage({ Key key,  this.title}) : super(key: key);
  final String title;

  @override
  _HeartPageState createState() => _HeartPageState();
}

class _HeartPageState extends State<HeartPage> with TickerProviderStateMixin {
  bool _isPlaying = false;
   AnimationController _animationController;
   Animation<double> _pulseAnimation;

  void animate() {
    if (_isPlaying)
      _animationController.stop();
    else
      _animationController.forward();

    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));

    _pulseAnimation = Tween<double>(begin: 1.0, end: 1.2).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn));

    _pulseAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed)
        _animationController.reverse();
      else if (status == AnimationStatus.dismissed)
        _animationController.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
//      appBar: AppBar(
//        title: Text(widget.title),
//      ),
      body: Center(
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          margin: EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ScaleTransition(
                  scale: _pulseAnimation,
                  child: Container(
                    child: Image.asset('assets/images/heart.png',),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: animate,
        tooltip: 'O\'sish',
        child: _isPlaying ? Icon(Icons.pause) : Icon(Icons.play_arrow),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}