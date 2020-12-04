import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ninghao/pages/home_page.dart';
import 'package:flutter_ninghao/route/application.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = FluroRouter();
    var usersHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
      return HomePage();
    });

    void defineRoutes(FluroRouter router) {
      router.define("/users/:id", handler: usersHandler);
    }


    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
