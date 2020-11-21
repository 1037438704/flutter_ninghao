import 'package:flutter/material.dart';
import 'package:flutter_ninghao/pages/home_page.dart';

import 'pages/index_page.dart';

void main() {

  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "NavigatorWidget",
      initialRoute: "/",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      onGenerateRoute: onGenerateRoute,
    );
  }

}


// 可抽离出去，作为一个工具类
var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];

  if(pageContentBuilder != null) {
    if(settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) => pageContentBuilder(context,arguments:settings.arguments)
      );
      return route;
    }else{
      final Route route = MaterialPageRoute(
          builder: (context) => pageContentBuilder(context)
      );
      return route;
    }
  }
  return null;
};

// 可抽离出去
final routes = {
  "/":(context) => IndexPage(),
  "/hoem_page":(context,{arguments}) => HomePage(arguments:arguments),
};