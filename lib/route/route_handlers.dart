import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ninghao/pages/home_page.dart';

/*
跳转到各个页面的handle
*/
///首页
Handler homePageHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return HomePage();
});

