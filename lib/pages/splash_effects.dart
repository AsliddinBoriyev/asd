import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  static const id="splash_page";
  const SplashPage({Key  key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  List<Color> listOfColors = [
    Colors.orange,
  ];
  int index = 0;
  double wB = 300;
  double hB = 60;

  incrementIndex() {
    setState(() {
      index++;
      if (index > listOfColors.length - 1) {
        index = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: listOfColors[index],
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                child: InkWell(
                  splashColor: Colors.white.withOpacity(0.7),
                  highlightColor: Colors.white.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    incrementIndex();
                  },
                  onTapDown: (dsdf) {},
                  child: Container(
                    alignment: Alignment.center,
                    width: wB,
                    height: hB,
                    child: const Text(
                      "Custom",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(34)),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}