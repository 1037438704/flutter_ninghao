import 'package:flutter/material.dart';
class FromPage extends StatelessWidget {
  // const FromPage({Key key}) : super(key: key);
  // var title ;
  // FromPage({this.title='表单'});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(  
        child: Text('返回'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(  
        title: Text('你好'),
      ),
      body: ListView(  
        children: [
          ListTile(
            title: Text('我是表单页面'),
          ),
          ListTile(
            title: Text('我是表单页面'),
          ),
          ListTile(
            title: Text('我是表单页面'),
          ),
        ],
      ),
    );
  }
}