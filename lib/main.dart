import 'package:flutter/material.dart';
import './pages/Form.dart';
import './pages/Serach.dart';
import 'pages/Tabs/Tabs.dart';
void main() {
  runApp(MyApp());
}
//自定义组件
class MyApp extends StatelessWidget {
  final routes = {
  // '/': (context) => Tabs(),
  '/search': (context,arguments) => SearchPage(arguments: arguments),
  '/form': (context) => FromPage(),
};
  @override
  Widget build(BuildContext context) {
    //每个项目的入口   写 MaterialApp
    return MaterialApp(
        title: 'Flutter项目',
        //Scaffold   是一个脚手架
        home: Tabs(),
        // ignore: missing_return
        onGenerateRoute : (RouteSettings settings) {
  //统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) =>
            pageContentBuilder(context, arguments: settings.arguments),
      );
      return route;
    } else {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context),
      );
      return route;
    }
  }
},
        theme: ThemeData(
          primarySwatch: Colors.green //改变顶部颜色
        ),
    );
  }
}