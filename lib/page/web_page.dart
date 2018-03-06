import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

class WebPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new IconButton(
          icon: new Icon(Icons.web),
          onPressed: loadGank,
        ),
      )
    );
  }

  void loadGank() async {
     var response=await http.get(
        Uri.encodeFull('http://gank.io/api/data/Android/10/1'),
        headers: {
          'Accept':'application/json'
        }
      );
      print(response.body);
      print(response.body[0]);
     Map<String,dynamic> map= JSON.decode(response.body);
      print(map);
  }
}
