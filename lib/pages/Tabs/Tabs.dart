import 'package:flutter/material.dart';
import 'Category.dart';
import 'Home.dart';
import 'Setting.dart';
class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}
class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _pageList =[ 
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            //appBar  就是  屏幕上面的部分
            appBar: AppBar(
              title: Text('aaaaaa'),
            ),
            //body  是内容区
            body: this._pageList[this._currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: this._currentIndex,
              fixedColor: Colors.red,
              iconSize: 36,
              onTap: (int index) {
                setState(() {
                  this._currentIndex = index;
                });
              },
              items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                // ignore: deprecated_member_use
                title: Text('首页')
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category),
                // ignore: deprecated_member_use
                title: Text('分类')
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                // ignore: deprecated_member_use
                title: Text('设置')
              ),
            ],),
            );
  }
}