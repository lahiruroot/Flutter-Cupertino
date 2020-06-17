

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
 return CupertinoApp(
 home: HomeScreen(),
 );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [ 
          BottomNavigationBarItem (
            icon: Icon(CupertinoIcons.home),
            title: Text('Home'),
          ),
            BottomNavigationBarItem (
            icon: Icon(CupertinoIcons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
      tabBuilder: (context, i){
      return CupertinoTabView(
         builder: (context){
           return CupertinoPageScaffold(
             navigationBar: CupertinoNavigationBar(
               middle: (i== 0) ? Text('Home') : Text('Setting',)
             ),
             child: Center(
               child: Text(
                 'Hello Flutter #$i',
                 style: CupertinoTheme.of(context)
                  .textTheme
                  .navLargeTitleTextStyle
               ),
             ),
           );
         }

       );
          } 
     );
  }
} 
