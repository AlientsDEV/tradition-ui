import 'package:flutter/gestures.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:traditions_ui/tradition.dart';

import './utils/size_config.dart';


class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: ListView(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 260.0,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 5.0,),
                      Icon(Icons.menu,color: Colors.black,),
                      SizedBox(height: 30.0,),
                      RichText(
                        text: TextSpan(
                          text: 'Find Your\n',
                          style: TextStyle(
                              fontSize: 25.0,
                              height: 1.2,
                              color:  Colors.black
                          ),
                          children: [
                            TextSpan(
                              text: 'Tradition',
                              style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold,
                                  height: 1.2,
                                  color:  Colors.black
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
                        height : 60.0,
                        width : MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.search,color: Colors.black,),
                            SizedBox(width: 10.0,),
                            Container(
                              height : 80.0,
                              width : 250.0,
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: 'Search you\'re looking for',
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500
                                    ),
                                    border: InputBorder.none
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0,),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Promo Today',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 15.0,),
                      StaggeredGridView.count(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        crossAxisCount: 2,
                        crossAxisSpacing: 15.0,
                        mainAxisSpacing: 15.0,
                        children: <Widget>[
                          _singleItem(0),
                          _singleItem(1),
                          _singleItem(2),
                          _singleItem(3),
                          _singleItem(4),
                        ],
                        staggeredTiles: [
                          StaggeredTile.extent(1, 170.0),
                          StaggeredTile.extent(1, 170.0),
                          StaggeredTile.extent(2, 160.0),
                          StaggeredTile.extent(1, 170.0),
                          StaggeredTile.extent(1, 170.0),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }


  Widget _singleItem(int index){
    return Container(
      height: 200.0,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(list_tradition[index].imgPath),
          fit: BoxFit.cover
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            list_tradition[index].location,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
              letterSpacing: 1.1,
            ),
          ),
        ),
      ),
    );
  }
}