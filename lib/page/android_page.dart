import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
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
  
}


