import 'package:animation_demo/pages/aylana1_rangi.dart';
import 'package:animation_demo/pages/aylana_rangi.dart';
import 'package:animation_demo/pages/home_page.dart';
import 'package:animation_demo/pages/rasm_page.dart';
import 'package:animation_demo/pages/shadow_page.dart';
import 'package:animation_demo/pages/size1_page.dart';
import 'package:animation_demo/pages/size_change.dart';
import 'package:animation_demo/pages/splash_effects.dart';
import 'package:animation_demo/pages/yurakcha.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        HeartPage.id:(context)=>HeartPage(),
        SplashPage.id:(context)=>SplashPage(),
        SizePage.id:(context)=>SizePage(),
        ShadowPage.id:(context)=>ShadowPage(),
        AylanaPage.id:(context)=>AylanaPage(),
        Aylana1Page.id:(context)=>Aylana1Page(),
        Size1Page.id:(context)=>Size1Page(),
        RasmPage.id:(context)=>RasmPage(),

      },
    );
  }
}
