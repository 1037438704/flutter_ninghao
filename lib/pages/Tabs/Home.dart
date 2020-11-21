import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  HomePage({Key key }) : super(key: key);
  

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List list = new List();
  @override
  Widget build(BuildContext context) {
    return ListView(  
      children: <Widget>[
        Column(
          children: this.list.map((value) {
          return ListTile(
            title: Text(value),
          );
        }).toList(),
        ),
        
        RaisedButton(
          child: Text('按钮'),
          onPressed: () {
            setState(() {
              this.list.add('新增数据一');
              this.list.add('新增数据二');
            });
          },
        ),
        RaisedButton(
          child: Text('跳转到搜索页面'),
          onPressed:() {
            Navigator.of(context);
            // Navigator.pushNamed(context, '/serach',arguments: {
            //   'id': 123
            // });
          }
        )
      ],
    );
  }
}