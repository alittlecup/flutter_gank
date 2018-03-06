import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'gank_item_page.dart';
import 'package:gank_app/model/gank_item.dart';
class AndroidPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new AndroidPageState();
  }
}
class AndroidPageState extends State<AndroidPage>{
  List<GankItem> items;
  @override
    void initState() {
      super.initState();
      items=gankItems;

    }
  @override
  Widget build(BuildContext context) {
   return new ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context,int index){
        return new GankItemView(items[index]);
      }
   );
  }

  void loadGank()async{
    var httpClient=new HttpClient();
    var uri = new Uri.http(
      'example.com', '/path1/path2', {'param1': '42', 'param2': 'foo'});
    // var request=await httpClient.getUrl(Uri.parse('http://gank.io/api/data/Android/10/1'));
    var request=await httpClient.getUrl(uri);
    var response=await request.close();
    var responseBody = await response.transform(UTF8.decoder).join();
    print(  responseBody);
  }
  
}


