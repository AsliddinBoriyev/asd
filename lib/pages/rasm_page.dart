import 'package:flutter/material.dart';

class RasmPage extends StatefulWidget {
  static const id="rasm_page";
  const RasmPage({Key key}) : super(key: key);

  @override
  State<RasmPage> createState() => _RasmPageState();
}

class _RasmPageState extends State<RasmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.blue,Colors.red
                ]
              )
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                margin: EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Welcome Charliies!",
                      style:TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ) ,),
                    Material(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Icon(Icons.qr_code,
                      size: 40,),
                    )
                  ],
                ),
              ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.only(bottom: 50),
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10000000),
              ),
              child: Container(
                padding: EdgeInsets.all(3),
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10000000),
                ),
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/profile.jpg"),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(35),
              margin: EdgeInsets.only(bottom: 0),
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10000000),
              ),
              child: Container(
                height: 300,
                width: 300,
                padding: EdgeInsets.all(35),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10000000),
                ),
                child: Container(
                  height: 300,
                  width: 300,
                  padding: EdgeInsets.all(35),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(10000000),
                  ),
                  child: Container(
                    height: 300,
                    width: 300,
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10000000),
                    ),
                    child: CircleAvatar(
                      radius:10 ,
                      backgroundImage: AssetImage("assets/images/koptok.jpg"),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
