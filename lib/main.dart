import 'package:flutter/material.dart';

import './utils/size_config.dart';
import './home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        return OrientationBuilder(
          builder: (context,orientation){
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              title: 'Traditions UI',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: MyHomePage(),
            );
          },
        );
      },
    );
  }
}

