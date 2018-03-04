import 'package:flutter/material.dart';

class TabItem{
 final String title;
 final IconData icon;

 const TabItem({this.title,this. icon});
}
List<TabItem> tabs=const <TabItem>[
  const  TabItem(title: 'Android',icon: Icons.android),
  const TabItem(title: 'iOS',icon: Icons.iso),
  const  TabItem(title: 'Web',icon: Icons.web)
];