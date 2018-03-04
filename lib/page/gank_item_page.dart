import 'package:flutter/material.dart';
import 'package:gank_app/model/gank_item.dart';

class GankItemView extends StatelessWidget {
  final GankItem item;

  GankItemView(this.item);

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(left: 15.0,top: 10.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Image.network(item.images[0],fit: BoxFit.fill,height: 50.0,width: 50.0,),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: new Text(item.desc,style: new TextStyle(
              fontSize: 20.0
            ),),
          ),
        ],
      ),
    );
    }
}
