import 'package:flutter/material.dart';
import 'model/tab_model.dart';
import 'page/android_page.dart';
import 'page/web_page.dart';
import 'page/ios_page.dart';
import 'page/contact_page.dart';
void main() {
  runApp(new MaterialApp(
    title: 'Gank-App',
    home: new HomePage(),
  ));
}
class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}
class HomePageState extends State<HomePage>with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
    void initState() {
      super.initState();
      _tabController=new TabController(length: tabs.length,vsync: this);
    }
    @override
      void dispose() {
        _tabController.dispose();
        super.dispose();
      }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Gank'),
      bottom: new TabBar(
        controller: _tabController,
        tabs:tabs.map((TabItem item){
          return new Tab(
            text: item.title,
            icon: new Icon(item.icon),
          );
        }).toList()
      ),),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new AndroidPage(),
          new ContactsDemo(),
          new WebPage()
        ],
      ),
    );
  }

}