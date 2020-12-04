

import 'package:flutter/material.dart';

class Application{

  static Router router;

  Future navigatePushToPage(BuildContext context,String route,Map map){

    var path = new StringBuffer();
    path = path..write(route)..write('?');

    if(map.length > 0){
      map.forEach((key, value) {
        path..write(key)..write('=')..write('${Uri.encodeComponent('$value')}')
            ..write('&');
      });
    }



  }

}


