import 'package:flutter/material.dart';
class ShadowPage extends StatefulWidget {
  static const id="shadow_page";
  const ShadowPage({Key key}) : super(key: key);

  @override
  State<ShadowPage> createState() => _ShadowPageState();
}

class _ShadowPageState extends State<ShadowPage> {
  double _padding=10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTapDown: (_)=>setState((){
            _padding=0.0;
          }),
          onTapUp: (_)=>setState((){
            _padding=10.0;
          }),
          child: AnimatedContainer(
            padding: EdgeInsets.only(bottom: _padding),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius:BorderRadius.circular(10),
            ),
            duration: Duration(
              milliseconds: 100,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 70
              ),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Custom",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
