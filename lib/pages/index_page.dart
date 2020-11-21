import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///第一个页面
class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("第一个页面"),
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.blueAccent,
          child: Text("点击跳转"),
          onPressed: () {
            Navigator.pushNamed(context, "/hoem_page",arguments: {"a":11111});
          },
        ),
      ),
    );
  }
}
