// 可抽离出去，作为一个工具类
import 'package:flutter/material.dart';
import 'package:flutter_ninghao/pages/home_page.dart';
import 'package:flutter_ninghao/pages/index_page.dart';

// 可抽离出去
final routes = {
  "/": (context) => IndexPage(),
  "/hoem_page": (context, {arguments}) => HomePage(arguments: arguments),
};

// ignore: top_level_function_literal_block
var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;

  final  Function pageContentBuilder = routes[name];

  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return null;
};


