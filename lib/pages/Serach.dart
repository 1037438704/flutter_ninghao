import 'package:flutter/material.dart';





///搜索页面
class SearchPage extends StatelessWidget {
  final arguments;


  SearchPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('搜索页面'),
      ),
      body: Column(
        children: [
          Text("搜索页面内容区域"),
          MaterialButton(
              child: Text("销毁页面反参数${arguments['name']}"),
              onPressed: (){
              Navigator.pop(context,{"name":"啦啦啦啦${arguments.toString()}"});
          })

        ],
      ),
    );
  }
}