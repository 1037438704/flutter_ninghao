// import 'package:flutter/material.dart';
// import '../pages/Tabs/Tabs.dart';
// import '../pages/Serach.dart';
// import '../pages/Form.dart';
// final routes = {
//   '/': (context) => Tabs(),
//   '/search': (context) => SearchPage(),
//   '/form': (context, {arguments}) => FromPage(arguments: arguments),
// };
 
// var onGenerateRoute=(RouteSettings settings){
//   //统一处理
//   final String name = settings.name;
//   final Function pageContentBuilder = routes[name];
//   if (pageContentBuilder != null) {
//     if (settings.arguments != null) {
//       final Route route = MaterialPageRoute(
//         builder: (context) =>
//             pageContentBuilder(context, arguments: settings.arguments),
//       );
//       return route;
//     } else {
//       final Route route = MaterialPageRoute(
//         builder: (context) => pageContentBuilder(context),
//       );
//       return route;
//     }
//   }
// };