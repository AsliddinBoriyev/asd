import 'package:animation_demo/pages/aylana1_rangi.dart';
import 'package:animation_demo/pages/aylana_rangi.dart';
import 'package:animation_demo/pages/rasm_page.dart';
import 'package:animation_demo/pages/shadow_page.dart';
import 'package:animation_demo/pages/size1_page.dart';
import 'package:animation_demo/pages/size_change.dart';
import 'package:animation_demo/pages/splash_effects.dart';
import 'package:animation_demo/pages/yurakcha.dart';
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> tasks = ['1', '2', '3','4','5','6','7','8'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) => printTask(tasks[index]),
          itemCount: tasks.length,
        ),
      ),
    ); //index < itemCount  index++
  }

  Widget printTask(String a) {
    return Card(
        child: ListTile(
            title: Text('$a-task',style: TextStyle(color: Colors.red),),
            onTap: () {
              switch (a) {
    case '1':
    {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (c) => const SplashPage(),
    ),
    );
    }
    break;
    case '2':
    {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (c) => HeartPage(),
    ),
    );
    }
    break;
        case '3':
          {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (c) =>  SizePage(),
              ),
            );
          }
          break;
                case '4':
                  {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (c)=>ShadowPage()
                    )
                    );
                  }
                  break;
                case '5':
                  {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (c)=>AylanaPage()
                        )
                    );
                  }
                  break;
                case '6':
                  {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (c)=>Size1Page()
                    )
                    );
                  }
                  break;
                case '7':
                  {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (c)=>Aylana1Page()
                        )
                    );
                  }
                  break;
                case '8':
                  {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (c)=>RasmPage()
                        )
                    );
                  }
    }
    }),
    );
  }
}
